#!/usr/bin/env python3
"""
Fetch spell vocals for all spells from BatMUD help pages.
Creates a CSV file with spell name, URL, and spell vocals.
Falls back to spellnames.tf for secret spells.
"""

import csv
import re
import time
import urllib.request
from pathlib import Path

from bs4 import BeautifulSoup


def parse_spellnames_tf(filepath: str) -> dict[str, str]:
    """Parse spellnames.tf and return dict mapping spell name to vocals."""
    vocals_map = {}

    with open(filepath, 'r', encoding='iso-8859-1') as f:
        content = f.read()

    # Pattern matches: /def -F -i -P1 -t"'(vocals)'" ... (Spell name)
    # Handle both =/substitute and just /substitute patterns
    pattern = r"-t\"'\(([^']+)\)'\".*?=/substitute.*?\(([^)]+)\)"

    for match in re.finditer(pattern, content):
        vocals = match.group(1)
        spell_name = match.group(2).strip()
        # Normalize spell name for lookup (lowercase for case-insensitive matching)
        vocals_map[spell_name.lower()] = vocals

    return vocals_map


def fetch_spell_list() -> list[tuple[str, str]]:
    """Fetch spell list page and return list of (spell_name, url) tuples."""
    url = 'https://www.bat.org/help/sksp#spells'
    req = urllib.request.Request(
        url,
        headers={
            'User-Agent': 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.0'
        }
    )

    with urllib.request.urlopen(req, timeout=30) as response:
        html = response.read().decode('utf-8')

    soup = BeautifulSoup(html, 'html.parser')
    spells = []

    # Find all links to spell pages
    for link in soup.find_all('a', href=re.compile(r'spell\?str=')):
        href = link.get('href', '')
        spell_name = link.get_text(strip=True)

        # Build full URL
        if href.startswith('http'):
            full_url = href
        else:
            full_url = f'https://www.bat.org{href}'

        if spell_name and href:
            spells.append((spell_name, full_url))

    return spells


def fetch_spell_vocals(url: str) -> str | None:
    """Fetch individual spell page and extract vocals. Returns None if not found."""
    req = urllib.request.Request(
        url,
        headers={
            'User-Agent': 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.0'
        }
    )

    try:
        with urllib.request.urlopen(req, timeout=30) as response:
            html = response.read().decode('utf-8')
    except Exception:
        return None

    # Search directly in HTML for Spell Vocals pattern
    # The HTML structure is: Spell Vocals:</span> 'vocals'</div>
    match = re.search(r"Spell Vocals:</span>\s*('[^']*')", html, re.IGNORECASE)
    if match:
        return match.group(1).strip()

    # Also try without quotes pattern (for HTML without quotes)
    match = re.search(r"Spell Vocals:</span>\s*([^<]+)", html, re.IGNORECASE)
    if match:
        vocals = match.group(1).strip()
        if vocals and vocals != '':
            return vocals

    # Try a more general pattern that matches text following Spell Vocals
    match = re.search(r"Spell Vocals:?\s*('[^']*'|[^<\n]+)", html, re.IGNORECASE)
    if match:
        vocals = match.group(1).strip()
        if vocals and vocals != '':
            # Remove any HTML tags
            vocals = re.sub(r'<[^>]+>', '', vocals)
            return vocals

    return None


def main():
    print("Parsing spellnames.tf for fallback vocals...")
    spellnames_path = Path('../spellnames.tf')
    if not spellnames_path.exists():
        spellnames_path = Path('spellnames.tf')

    fallback_vocals = {}
    if spellnames_path.exists():
        fallback_vocals = parse_spellnames_tf(str(spellnames_path))
        print(f"  Loaded {len(fallback_vocals)} spell vocals from spellnames.tf")
    else:
        print("  Warning: spellnames.tf not found, no fallback available")

    print("\nFetching spell list...")
    spells = fetch_spell_list()
    print(f"  Found {len(spells)} spells")

    results = []

    for i, (spell_name, url) in enumerate(spells, 1):
        print(f"[{i}/{len(spells)}] Processing {spell_name}...")

        # Try to fetch from web
        vocals = fetch_spell_vocals(url)

        # If not found, try fallback
        if vocals is None:
            lookup_name = spell_name.lower()
            if lookup_name in fallback_vocals:
                vocals = f"'({fallback_vocals[lookup_name]})'"
                print(f"  Found fallback vocals: {vocals}")
            else:
                vocals = ""
                print(f"  No vocals found")
        else:
            print(f"  Found vocals: {vocals}")

        results.append({
            'spell_name': spell_name,
            'url': url,
            'vocals': vocals
        })

        # Be polite - add a small delay
        time.sleep(0.5)

    # Sort by spell name
    results.sort(key=lambda x: x['spell_name'].lower())

    # Write CSV
    output_path = Path('spell_vocals.csv')
    with open(output_path, 'w', newline='', encoding='utf-8') as f:
        writer = csv.DictWriter(f, fieldnames=['spell_name', 'url', 'vocals'])
        writer.writeheader()
        writer.writerows(results)

    print(f"\nDone! Wrote {len(results)} spells to {output_path}")


if __name__ == '__main__':
    main()
