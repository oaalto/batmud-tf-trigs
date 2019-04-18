/load batmud-tf-trigs/color_helpers.tf

/set cere_done=0
/set separating_soul=0
/set joining_soul=0
/set conjuring_mount=0
/set dismissing_mount=0

;; Status line
/status_add -r1 soul_var

/def -p1000 -F -mregexp -ag -t'^Your soul companion: (.+) \((.+)%\)' = \
        /set soul_var=Soul: $[decode_attr({P2}, colorer({P2}, 100))]

/def -p10000 -F -msimple -t'You start chanting.' start_spell =\
	/set cere_done=0

/def -p10000 -F -msimple -t'You are done with the chant.' start_separating =\
	/set separating_soul=0 %;\
	/set joining_soul=0 %;\
	/set conjuring_mount=0 %;\
	/set dismissing_mount=0

/def -p10000 -F -msimple -t'You perform the ceremony.' cere_success =\
	/set cere_done=1 %;\
	/if ({separating_soul})\
		/cast_separate_soul %;\
	/if ({joining_soul})\
		/cast_join_soul %;\
	/elseif ({conjuring_mount})\
		/cast_conjure_mount %;\
	/elseif ({dismissing_mount})\
		/cast_dismiss_mount %;\
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

;; Join Soul
/def cast_join_soul =\
	/if ({cere_done})\
		/send @cast join soul %;\
	/else \
		/set joining_soul=1 %;\
		/use_ceremony %;\
	/endif

/alias cjoin /cast_join_soul

;; Conjure Animal Soul
/def cast_conjure_mount =\
	/if ({cere_done})\
		/send @cast conjure animal soul %;\
	/else \
		/set conjuring_mount=1 %;\
		/use_ceremony %;\
	/endif

/alias csum /cast_conjure_mount

;; Dismiss Animal Soul
/def cast_dismiss_mount =\
	/if ({cere_done})\
		/send @cast animal soul link at dismiss %;\
	/else \
		/set dismissing_mount=1 %;\
		/use_ceremony %;\
	/endif

/alias cdis /cast_dismiss_mount

/def -p10000 -F -mregexp -t'(.+) spirit slowly appears, answering your call.' =\
	/send @lead my spirit

