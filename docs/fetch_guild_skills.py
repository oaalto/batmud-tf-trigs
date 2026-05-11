#!/usr/bin/env python3
"""
Fetch skill and spell names for all guilds from BatMUD help pages.
Creates a file for each guild under docs/ with the extracted skills and spells.
"""

import csv
import re
import time
import urllib.request
from pathlib import Path
from urllib.parse import urlencode, parse_qs, urlparse

from bs4 import BeautifulSoup


def extract_guild_name(url: str) -> str:
    """Extract guild name from URL."""
    parsed = urlparse(url)
    params = parse_qs(parsed.query)
    return params.get('guild', ['unknown'])[0]


def fetch_guild_page(url: str) -> str:
    """Fetch guild page HTML."""
    req = urllib.request.Request(
        url,
        headers={
            'User-Agent': 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.0'
        }
    )
    with urllib.request.urlopen(req, timeout=30) as response:
        return response.read().decode('utf-8')


def parse_skills_and_spells(html: str) -> tuple[list[str], list[str]]:
    """Parse HTML to extract skill and spell names."""
    soup = BeautifulSoup(html, 'html.parser')

    skills = []
    spells = []

    # Find the "Skill name:" text and get the table after it
    skill_heading = None
    spell_heading = None

    for elem in soup.find_all(string=re.compile(r'Skill name:')):
        skill_heading = elem
        break

    for elem in soup.find_all(string=re.compile(r'Spell name:')):
        spell_heading = elem
        break

    # Extract skills - they're typically links in the table after "Skill name:"
    if skill_heading:
        # Find the parent table or the next table
        current = skill_heading.parent
        while current and current.name != 'table':
            current = current.parent

        if current:
            # Find all links in this table that point to skill pages
            for link in current.find_all('a', href=re.compile(r'skill\?str=')):
                skill_name = link.get_text(strip=True)
                if skill_name:
                    skills.append(skill_name)

    # Extract spells - they're typically links in the table after "Spell name:"
    if spell_heading:
        current = spell_heading.parent
        while current and current.name != 'table':
            current = current.parent

        if current:
            # Find all links in this table that point to spell pages
            for link in current.find_all('a', href=re.compile(r'spell\?str=')):
                spell_name = link.get_text(strip=True)
                if spell_name:
                    spells.append(spell_name)

    # Alternative: look for all links with skill/spell patterns anywhere
    if not skills:
        for link in soup.find_all('a', href=re.compile(r'skill\?str=')):
            skill_name = link.get_text(strip=True)
            if skill_name and skill_name not in skills:
                skills.append(skill_name)

    if not spells:
        for link in soup.find_all('a', href=re.compile(r'spell\?str=')):
            spell_name = link.get_text(strip=True)
            if spell_name and spell_name not in spells:
                spells.append(spell_name)

    return skills, spells


def write_guild_file(guild_type: str, guild_name: str, skills: list[str], spells: list[str]) -> None:
    """Write guild skills and spells to a file."""
    output_dir = Path('docs')
    output_dir.mkdir(exist_ok=True)

    filename = f"{guild_name}.txt"
    filepath = output_dir / filename

    with open(filepath, 'w', encoding='utf-8') as f:
        f.write(f"# {guild_name}\n")
        f.write(f"Type: {guild_type}\n\n")

        f.write("## Skills\n\n")
        if skills:
            for skill in sorted(set(skills)):
                f.write(f"- {skill}\n")
        else:
            f.write("- No skills found\n")

        f.write("\n## Spells\n\n")
        if spells:
            for spell in sorted(set(spells)):
                f.write(f"- {spell}\n")
        else:
            f.write("- No spells found\n")

    print(f"Written: {filepath}")


def main():
    csv_path = Path('docs/guild_urls.csv')

    if not csv_path.exists():
        print(f"Error: {csv_path} not found")
        return

    with open(csv_path, 'r', encoding='utf-8') as f:
        reader = csv.DictReader(f)
        rows = list(reader)

    print(f"Found {len(rows)} guilds to process")

    for i, row in enumerate(rows, 1):
        guild_type = row['type']
        url = row['url']
        guild_name = extract_guild_name(url)

        print(f"[{i}/{len(rows)}] Fetching {guild_name}...")

        try:
            html = fetch_guild_page(url)
            skills, spells = parse_skills_and_spells(html)
            write_guild_file(guild_type, guild_name, skills, spells)
        except Exception as e:
            print(f"  Error processing {guild_name}: {e}")

        # Be polite - add a small delay between requests
        time.sleep(0.5)

    print("\nDone!")


if __name__ == '__main__':
    main()
