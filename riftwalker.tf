;; Entity Skills
/set fire_skill=blazing sunder
/set air_skill=suffocating embrace

/def set_entity_skill =\
	/if ({1} == "fire") \
		/set current_skill=%{fire_skill} %;\
	/endif %;\
	/if ({1} == "air") \
		/set current_skill=%{air_skill} %;\
	/endif

/alias ufire /set_entity_skill fire
/alias uair /set_entity_skill air

/def use_current_skill =\
	/if (strlen({1}) > 0)\
		/send @gem cmd use %{current_skill} at %{*} %;\
	/else \
		/send @gem cmd use %{current_skill} %;\
	/endif
	
/alias ccs /use_current_skill %{*}

/def summon_entity =\
	/send @cast summon rift entity at %{1} %;\
	/set_entity_skill %{1}

/alias csum /summon_entity %{*}

/def transform_entity =\
	/send @cast transform rift entity at %{1} %;\
	/set_entity_skill %{1}

/alias cte /transform_entity %{*}

;; Start Battle
/def start_battle =\
	/cast_spark_birth %{*} %;\
	/use_current_skill %{*} %;\

/alias css /start_battle %{*}

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
/def -p10 -F -P1BCblue -mregexp -t"(Entity sense:) (.+)"



