/load batmud-tf-trigs/color_helpers.tf

/set cere_done=0
/set separating_soul=0
/set joining_soul=0
/set conjuring_mount=0
/set dismissing_mount=0

;; Status line
/def -p1000 -F -mregexp -ag -t"^Your soul companion: (.+) \((.+)%\) (.+)" = \
    /let soul=$[decode_attr({P2}, colorer({P2}, 100))] %;\
    /let percent=$[set_white('%')] %;\
    /set status_line_2=Soul: %{soul}%{percent} %{P3}

/def -p10000 -F -msimple -t"You start chanting." start_spell = \
    /set cere_done=0

/def -p10000 -F -msimple -t"You are done with the chant." start_separating = \
    /set separating_soul=0 %;\
    /set joining_soul=0 %;\
    /set conjuring_mount=0 %;\
    /set dismissing_mount=0

/def -p10000 -F -msimple -t"You perform the ceremony." cere_success = \
    /set cere_done=1 %;\
    /if ({separating_soul}) \
        /cast_separate_soul %;\
    /elseif ({joining_soul}) \
        /cast_join_soul %;\
    /elseif ({conjuring_mount}) \
        /cast_conjure_mount %;\
    /elseif ({dismissing_mount}) \
        /cast_dismiss_mount %;\
    /endif

;; Separate Soul
/def cast_separate_soul = \
    /if ({cere_done}) \
        /send @cast separate soul %;\
    /else \
        /set separating_soul=1 %;\
        /use_ceremony %;\
    /endif

/alias csoul /cast_separate_soul

;; Join Soul
/def cast_join_soul = \
	/if ({cere_done}) \
		/send @cast join soul %;\
	/else \
		/set joining_soul=1 %;\
		/use_ceremony %;\
	/endif

/alias cjoin /cast_join_soul

;; Conjure Animal Soul
/def cast_conjure_mount = \
	/if ({cere_done}) \
		/send @cast conjure animal soul %;\
	/else \
		/set conjuring_mount=1 %;\
		/use_ceremony %;\
	/endif

/alias csum /cast_conjure_mount

;; Dismiss Animal Soul
/def cast_dismiss_mount = \
	/if ({cere_done}) \
		/send @cast animal soul link at dismiss %;\
	/else \
		/set dismissing_mount=1 %;\
		/use_ceremony %;\
	/endif

/alias cdis /cast_dismiss_mount

/def -p10000 -F -mregexp -t"(.+) spirit slowly appears, answering your call." = \
	/send @lead my spirit

/def -F -aCblue -msimple -t"You feel slightly better at fighting with your soul companion."
