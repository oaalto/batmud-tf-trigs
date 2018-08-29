;; Start Battle
/def start_battle =\
	/cast_spark_birth %{*} %;\
	/use_blazing_sunder %{*} %;\

/alias css /start_battle %{*}

;; Blazing Sunder
/def use_blazing_sunder =\
	/if (strlen({1}) > 0)\
		/send @gem cmd use blazing sunder at %{*} %;\
	/else \
		/send @gem cmd use blazing sunder %;\
	/endif

/alias cbs /use_blazing_sunder %{*}

;; Spark Birth
/def cast_spark_birth =\
	/if (strlen({1}) > 0)\
		/send @target %{*};@gem cmd target %{*};cast 'spark birth' %{*} %;\
	/else \
		/send @cast 'spark birth' %;\
	/endif

/alias cs /cast_spark_birth %{*}

;; Rift Pulse
/def cast_rift_pulse =\
	/if (strlen({1}) > 0)\
		/send @target %{*};@gem cmd target %{*};cast 'rift pulse' %{*} %;\
	/else \
		/send @cast 'rift pulse' %;\
	/endif

/alias crp /cast_rift_pulse %{*}

/def -p10 -F -aBCred -msimple -t"Your fire entity does some strange combat maneuver but doesn\'t hit anything."
/def -p10 -F -P1BCwhite -mregexp -t"(Entity sense:) (.+)"



