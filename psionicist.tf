;; Mindseize
/def cast_mindseize = \
	/if (strlen({1}) > 0) \
                /send @target %{*} %;\
        /endif %;\
	/send cast 'Mindseize' %{*}

/alias cms /cast_mindseize %{*}

;; Mind blast
/def cast_mind_blast = \
	/if (strlen({1}) > 0) \
		/send @target %{*} %;\
	/endif %;\
	/send @cast 'Mind blast' %{*}

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

;; Mind development
/def cast_mind_development =\
	/send @cast 'mind development' %{*}

/alias cmdev /cast_mind_development %{*}

;; Phaze Shift
/def cast_phaze_shift = \
	/send @cast 'phaze shift' %{*}

/alias cps /cast_phaze_shift %{*}

;; Meditation
/def use_meditation =\
	/send @use meditation

/alias med /use_meditation

/def -p10 -F -aCblue -msimple -t"You seize the mind of the monster as it dies." = \
	/send @psi sense

/def -p10 -F -aCgreen -msimple -t"You gain some knowledge of how the mind works."
/def -p10 -F -aBCgreen -msimple -t"You gain useful knowledge of how the mind works."




