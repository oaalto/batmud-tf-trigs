/set cere_done=0
/set separating_soul=0

/def -p10000 -F -mregexp -P3BCwhite -t'(Your soul companion): (.+) \((.+)\) (.+)'

/def -p10000 -F -msimple -t'You start chanting.' start_spell =\
	/set cere_done=0

/def -p10000 -F -msimple -t'You are done with the chant.' start_separating =\
	/set separating_soul=0

/def -p10000 -F -msimple -t'You perform the ceremony.' cere_success =\
	/set cere_done=1 %;\
	/if ({separating_soul})\
		/cast_separate_soul %;\
	/endif

;; Separate Soul
/def cast_separate_soul =\
	/if ({cere_done})\
		/send @cast separate soul %;\
	/else \
		/set separating_soul=1 %;\
		/use_ceremony %;\
	/endif

/alias csoul /cast_separate_soul
