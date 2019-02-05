;; Iron Palm
/def use_iron_palm =\
	/if (strlen({1}) > 0)\
		/send @target %{*};use iron palm at %{*} %;\
	/else \
		/send @use 'iron palm' %;\
	/endif

/alias ip /use_iron_palm %{*}

/def use_dim_mak =\
	/if (strlen({1}) > 0)\
		/send @target %{*};use dim mak at %{*} %;\
	/else \
		/echo No target! %;\
	/endif

/alias dm /use_dim_mak %{*}

;; Meditation
/def use_meditation =\
	/send @use meditation %;\

/alias med /use_meditation %{*}

;; Tiger Claw
/def cast_tiger_claw =\
	/if (strlen({1}) > 0)\
		/send @target %{*};cast tiger claw at %{*} %;\
	/else \
		/send @cast 'tiger claw' %;\
	/endif

/alias tc /use_tiger_claw %{*}
