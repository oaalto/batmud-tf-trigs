;; Mindseize
/def cast_mindseize =\
	/if (strlen({1}) > 0)\
		/send @target %{*};cast 'Mindseize' %{*} %;\
	/else \
		/send @cast 'Mindseize' %;\
	/endif

/alias cms /cast_mindseize %{*}

;; Mind blast
/def cast_mind_blast =\
	/if (strlen({1}) > 0)\
		/send @target %{*};cast 'Mind blast' %{*} %;\
	/else \
		/send @cast 'Mind blast' %;\
	/endif

/alias cmb /cast_mind_blast %{*}

;; Psibolt
/def cast_psibolt =\
	/if (strlen({1}) > 0)\
		/send @target %{*};cast 'psibolt' %{*} %;\
	/else \
		/send @cast 'psibolt' %;\
	/endif

/alias cpb /cast_psibolt %{*}

;; Force shield
/def cast_force_shield =\
	/if (strlen({1}) > 0)\
		/send @cast 'force shield' %{*} %;\
	/else \
		/send @cast force shield at me %;\
	/endif

/alias cfs /cast_force_shield %{*}

;; Mind development
/def cast_mind_development =\
	/send @cast mind development

/alias cmd /cast_mind_development

;; Meditation
/def use_meditation =\
	/send @use meditation %;\

/alias med /use_meditation

