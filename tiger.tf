;; Iron Palm
/def use_iron_palm = \
	/send @target %{*};use 'iron palm' %{*}

/alias ip /use_iron_palm %{*}

/def use_dim_mak = \
	/if (strlen({1}) > 0) \
		/send @target %{*};use dim mak at %{*} %;\
	/else \
		/echo No target! %;\
	/endif

/alias dm /use_dim_mak %{*}

;; Meditation
/def use_meditation = \
	/send @use meditation %;\

/alias med /use_meditation

;; Tiger Claw
/def cast_tiger_claw = \
	/send @target %{*};cast 'tiger claw' %{*}

/alias tc /cast_tiger_claw %{*}

;; Flame Fists
/def cast_flame_fists = \
        /send @cast flame fists %;\
 
/alias cff /cast_flame_fists

;; Invisibility
/def cast_invisibility = \
	/if (strlen({1}) > 0) \
		/send cast invisibility at %{*} %;\
	/else \
		/send cast invisiblity at me %;\
	/endif
