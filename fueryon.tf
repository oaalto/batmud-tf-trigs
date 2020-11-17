/def -p1000 -F -aCgreen -mregexp -t"Fueryon hits (.+) (once|twice|thrice) (.+)."
/def -p1000 -F -P2Cblue -mregexp -t"Fueryon hits (.+) (once) (.+)."
/def -p1000 -F -P2Cmagenta -mregexp -t"Fueryon hits (.+) (twice) (.+)."
/def -p1000 -F -P2Cred -mregexp -t"Fueryon hits (.+) (thrice) (.+)."
/def -p1000 -F -P2BCred -mregexp -t"Fueryon hits (.+) (\d+ times) (.+)."

/def -p1000 -F -aCmagenta -mregexp -t"(.+) hits Fueryon (once|twice|thrice) (.+)."
/def -p1000 -F -P2Cblue -mregexp -t"(.+) hits Fueryon (once) (.+)."
/def -p1000 -F -P2BCmagenta -mregexp -t"(.+) hits Fueryon (twice) (.+)."
/def -p1000 -F -P2Cred -mregexp -t"(.+) hits Fueryon (thrice) (.+)."
/def -p1000 -F -P2BCmagenta -mregexp -t"(.+) hits Fueryon (\d+ times) (.+)."
/def -p1000 -F -P2BCred -mregexp -t"(.+) hits Fueryon (\d+ times) (.+)."

/set tzarakk_mount=Vedir

/def -p10000 -F -msimple -t"You get up on Vedir and begin to ride." = \
	/send @wield sickle in 1;wield xormor in 2

/def -p10000 -F -msimple -t"You can not hold The Demon Sickle <red glow>!" = \
	/send @wield sickle in 1

