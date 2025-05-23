;; Mindseize
/def cast_mindseize = \
	/if (strlen({1}) > 0) \
		/send @target %{*} %;\
	/endif %;\
	/send cast 'mindseize' %{*}

/alias cms /cast_mindseize %{*}

;; Mind blast
/def cast_mind_blast = \
	/if (strlen({1}) > 0) \
		/send @target %{*} %;\
	/endif %;\
	/send @cast 'mind blast' %{*}

/alias cmb /cast_mind_blast %{*}

;; Psibolt
/def cast_psibolt = \
	/if (strlen({1}) > 0) \
  	      /send @target %{*} %;\
	/endif %;\
	/send cast 'psibolt' %{*}

/alias cp /cast_psibolt %{*}

;; Psi blast
/def cast_psi_blast = \
	/if (strlen({1}) > 0) \
        	/send @target %{*} %;\
    	/endif %;\
	/send cast 'psi blast' %{*}

/alias cpb /cast_psi_blast %{*}

;; Mind disruption
/def cast_mind_disruption = \
	/if (strlen({1}) > 0) \
    	    /send @target %{*} %;\
	/endif %;\
	/send cast 'mind disruption' %{*}

/alias cmd /cast_mind_disruption %{*}

;; Psychich crush
/def cast_psychic_crush = \
	/if (strlen({1}) > 0) \
        	/send @target %{*} %;\
	/endif %;\
	/send cast 'psychic crush' %{*}

/alias cpc /cast_psychic_crush %{*}

;; Psychich storm
/def cast_psychic_storm = \
	/if (strlen({1}) > 0) \
        	/send @target %{*} %;\
	/endif %;\
	/send cast 'psychic storm' %{*}

/alias cps /cast_psychic_storm %{*}

;; Force shield
/def cast_force_shield = \
	/if (strlen({1}) > 0) \
		/send @cast 'force shield' %{*} %;\
	/elseif ({has_entity}) \
		/send @cast force shield at entity %;\
	/else \
		/send @cast force shield at me %;\
	/endif

/alias cfs /cast_force_shield %{*}

/def cast_psionic_shield = \
	/send @cast psionic shield

/alias cpshield /cast_psionic_shield

;; Mind development
/def cast_mind_development =\
	/send @cast 'mind development' %{*}

/alias cmdev /cast_mind_development %{*}

;; Phaze Shift
/def cast_phaze_shift = \
	/send @cast 'phaze shift' %{*}

/alias cgo /cast_phaze_shift %{*}

;; Meditation
/def use_meditation =\
	/send @use meditation

/alias med /use_meditation

/def -p10 -F -aCblue -msimple -t"You seize the mind of the monster as it dies." = \
	/send @psi sense

/def -p10 -F -aCred -msimple -t"You gained no new knowledge from such a pitiful monster."
/def -p10 -F -aCgreen -msimple -t"You gain some knowledge of how the mind works."
/def -p10 -F -aCgreen -msimple -t"You gain useful knowledge of how the mind works."
/def -p10 -F -aCgreen -msimple -t"You gain considerable knowledge of how the mind works."
/def -p10 -F -aCgreen -msimple -t"You gain detailed knowledge of how the mind works."
/def -p10 -F -aCgreen -msimple -t"WOW! Your mind almost has trouble processing this much new knowledge!"
/def -p10 -F -aCgreen -mregexp -t"YOU GAIN AN INCONCEIVABLE AMOUNT OF KNOWLEDGE!"

/def -p10 -F -aBCgreen -mregexp -t"(.*) is stunned from the intrusion into (.*) mind."

/def -p10 -F -aCblue -mregexp -t"You still need (.+) knowledge of how the mind works before you can improve your knowledge of mental defence."
/def -p10 -F -aCblue -msimple -t"You only need very little more knowledge of how the mind works before you can improve your knowledge of mental defence."
/def -p10 -F -aCgreen -msimple -t"You sense that you have acquired enough knowledge of how the mind works in order to improve your knowledge of mental defence."

/def -p10 -F -P1Cred -mregexp -t"You still need (an unimaginable amount) of more knowledge of how the mind works before you can improve your knowledge of mental defence."
/def -p10 -F -P1BCred -mregexp -t"You still need (extremely much more) knowledge of how the mind works before you can improve your knowledge of mental defence."
/def -p10 -F -P1Cmagenta -mregexp -t"You still need (much more) knowledge of how the mind works before you can improve your knowledge of mental defence."
/def -p10 -F -P1BCmagenta -mregexp -t"You still need (more) knowledge of how the mind works before you can improve your knowledge of mental defence."
/def -p10 -F -P1Cyellow -mregexp -t"You still need (a little more) knowledge of how the mind works before you can improve your knowledge of mental defence."
/def -p10 -F -P1BCyellow -mregexp -t"You only need (very little more) knowledge of how the mind works before you can improve your knowledge of mental defence."

