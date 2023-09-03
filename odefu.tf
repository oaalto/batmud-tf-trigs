/def -p1000 -F -aCgreen -mregexp -t"Odefu hits (.+) (once|twice|thrice|\d times) (.+)."
/def -p1000 -F -P2Cblue -mregexp -t"Odefu hits (.+) (once) (.+)."
/def -p1000 -F -P2Cmagenta -mregexp -t"Odefu hits (.+) (twice) (.+)."
/def -p1000 -F -P2BCred -mregexp -t"Odefu hits (.+) (thrice) (.+)."
/def -p1000 -F -P2Cred -mregexp -t"Odefu hits (.+) (\d+ times) (.+)."

/def -p1000 -F -aCmagenta -mregexp -t"(.+) hits Odefu (once|twice|thrice|\d times) (.+)."
/def -p1000 -F -P2Cblue -mregexp -t"(.+) hits Odefu (once) (.+)."
/def -p1000 -F -P2BCmagenta -mregexp -t"(.+) hits Odefu (twice) (.+)."
/def -p1000 -F -P2BCred -mregexp -t"(.+) hits Odefu (thrice) (.+)."
/def -p1000 -F -P2BCmagenta -mregexp -t"(.+) hits Odefu (\d+ times) (.+)."
/def -p1000 -F -P2Cred -mregexp -t"(.+) hits Odefu (\d+ times) (.+)."

/def -p1000 -F -aCblue -msimple -t"A blue-glowing soul companion [Odefu]"

/set tzarakk_mount=Orthos
/set rig=frame

