/def -p1000 -F -aCgreen -mregexp -t"Fueryon hits (.+) (once|twice|thrice|\d times) (.+)."
/def -p1000 -F -P2Cblue -mregexp -t"Fueryon hits (.+) (once) (.+)."
/def -p1000 -F -P2Cmagenta -mregexp -t"Fueryon hits (.+) (twice) (.+)."
/def -p1000 -F -P2BCred -mregexp -t"Fueryon hits (.+) (thrice) (.+)."
/def -p1000 -F -P2Cred -mregexp -t"Fueryon hits (.+) (\d+ times) (.+)."

/def -p1000 -F -aCmagenta -mregexp -t"(.+) hits Fueryon (once|twice|thrice|\d times) (.+)."
/def -p1000 -F -P2Cblue -mregexp -t"(.+) hits Fueryon (once) (.+)."
/def -p1000 -F -P2BCmagenta -mregexp -t"(.+) hits Fueryon (twice) (.+)."
/def -p1000 -F -P2BCred -mregexp -t"(.+) hits Fueryon (thrice) (.+)."
/def -p1000 -F -P2BCmagenta -mregexp -t"(.+) hits Fueryon (\d+ times) (.+)."
/def -p1000 -F -P2Cred -mregexp -t"(.+) hits Fueryon (\d+ times) (.+)."

/set tzarakk_mount=Vedir
/set rig=bandolier
/set is_lich=1

