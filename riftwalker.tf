;; Status line

/def -p1000 -F -ag -mregexp -t'^--=  (.+)  HP:(.+)\((.+)\) \[(.*)\] \[(.*)\] \[(.*)\]  =--$' = \
	/set status_line_2=%{P1}: %{P2}($[set_white({P3})]) [%{P4}] %{P5} %{P6}

/def -p1000 -F -msimple -t'Your entity begins to warp, seeming to become unstable. It folds in on itself and vanishes!' = \
	/set status_line_2=

;; Entity Skills
/set fire_skill=blazing sunder
/set air_skill=suffocating embrace
/set earth_skill=earthen cover

;; Init
/set current_skill=blazing sunder

/def set_entity_skill = \
	/if ({*} =~ "fire") \
		/set current_skill=%{fire_skill} %;\
	/elseif ({*} =~ "air") \
		/set current_skill=%{air_skill} %;\
	/elseif ({*} =~ "earth") \
		/set current_skill=%{earth_skill} %;\
	/else \
		/echo Unknown skill %{*}! %;\
	/endif %;\
	/echo -aBCwhite Current entity skill is %{current_skill}

/alias ufire /set_entity_skill fire
/alias uair /set_entity_skill air
/alias uearth /set_entity_skill earth

/def use_current_skill = \
	/send @target %{*};gem cmd target %{*};gem cmd use '%{current_skill}' %{*}
	
/alias ccs /use_current_skill %{*}

;; Show Entity stats
/def gem_entity = \
	/if ({current_skill} =~ {fire_skill}) \
		/send @gem entities fire %;\
	/elseif ({current_skill} =~ {air_skill}) \
		/send @gem entities air %;\
	/elseif ({current_skill} =~ {earth_skill}) \
		/send @gem entities earth %;\
	/endif

/alias estat /gem_entity

;; Summon rift entity
/def summon_entity = \
	/send @cast summon rift entity at %{*} %;\
	/set_entity_skill %{*}

/alias csum /summon_entity %{*}

;; Dismiss rift entity
/def dismiss_entity = \
	/send @cast dismiss rift entity

/alias cdis /dismiss_entity

;; Establish entity control
/def cast_entity_control = \
	/send @cast establish entity control

/alias ctrl /cast_entity_control

;; Regenerate rift entity
/def cast_entity_regen = \
	/send @cast regenerate rift entity

/alias cer /cast_entity_regen

;; Transform rift entity
/def transform_entity = \
	/send @cast transform rift entity at %{1} %;\
	/set_entity_skill %{*}

/alias cte /transform_entity %{*}

;; Start Battle (Spark Birth)
/def start_battle1 = \
	/send @target %{*};gem cmd target %{*};cast 'spark birth' %{*};gem cmd use '%{current_skill}' %{*} 

/alias cs /start_battle1 %{*}

;; Start Battle (Rift Pulse)
/def start_battle2 = \
	/send @target %{*};gem cmd target %{*};cast 'rift pulse' %{*};gem cmd use '%{current_skill}' %{*}

/alias css /start_battle2 %{*}

;; Spark Birth
/def cast_spark_birth = \
	/send @target %{*};gem cmd target %{*};cast 'spark birth' %{*}

/alias csb /cast_spark_birth %{*}

;; Rift Pulse
/def cast_rift_pulse = \
	/send @target %{*};gem cmd target %{*};cast 'rift pulse' %{*}

/alias crp /cast_rift_pulse %{*}

;; Dimensional leech
/def cast_dimensional_leech = \
	/send @target %{*};gem cmd target %{*};cast 'dimensional leech' %{*}

/alias cdl /cast_dimensional_leech %{*}

;; Force absorption
/def cast_force_absorption = \
	/if (strlen({1}) > 0) \
		/send @cast 'force absorption' %{*} %;\
	/else \
		/send @cast force absorption at entity %;\
	/endif

/alias cfa /cast_force_absorption %{*}

;; Mirror Image
/def cast_mirror_image = \
	/if (strlen({1}) > 0) \
		/send @cast 'mirror image' %{*} %;\
	/else \
		/send @cast mirror image at entity %;\
	/endif

/alias cmi /cast_mirror_image %{*}

;; Absorbing meld
/def cast_absorbing_meld = \
        /send @cast 'Absorbing meld' %;\

/alias cam /cast_absorbing_meld

;; Iron Will
/def cast_iron_will = \
	/if (strlen({1}) > 0) \
		/send @cast 'iron will' %{*} %;\
	/else \
		/send @cast iron will at entity %;\
	/endif

/alias ciw /cast_iron_will %{*}

;; Force shield (Psionicist)
/def cast_force_shield_at_entity = \
	/send @cast force shield at entity

/alias cfse /cast_force_shield_at_entity

/def -p10 -F -aCcyan -mregexp -t"[A|An] (.+) air entity (.+) with power \[yours\]"
/def -p10 -F -aCred -mregexp -t"[A|An] (.+) fire entity (.+) with power \[yours\]"
/def -p10 -F -aCblue -mregexp -t"[A|An] (.+) water entity (.+) with power \[yours\]"
/def -p10 -F -aCyellow -mregexp -t"[A|An] (.+) earth entity (.+) with power \[yours\]"

/def -p10 -F -P2Cblue -mregexp -t"[A|An] (.+) entity (glowing) with power \[yours\]"
/def -p10 -F -P2BCblue -mregexp -t"[A|An] (.+) entity (shimmering) with power \[yours\]"
/def -p10 -F -P2Ccyan -mregexp -t"[A|An] (.+) entity (gleaming) with power \[yours\]"
/def -p10 -F -P2BCcyan -mregexp -t"[A|An] (.+) entity (sizzling) with power \[yours\]"
/def -p10 -F -P2Cyellow -mregexp -t"[A|An] (.+) entity (sparkling) with power \[yours\]"
/def -p10 -F -P2BCyellow -mregexp -t"[A|An] (.+) entity (glittering) with power \[yours\]"
/def -p10 -F -P2Cmagenta -mregexp -t"[A|An] (.+) entity (radiating) with power \[yours\]"
/def -p10 -F -P2BCmagenta -mregexp -t"[A|An] (.+) entity (throbbing) with power \[yours\]"
/def -p10 -F -P2Cred -mregexp -t"[A|An] (.+) entity (pulsating) with power \[yours\]"
/def -p10 -F -P2BCred -mregexp -t"[A|An] (.+) entity (blazing) with power \[yours\]"

/def -p10 -F -aBCred -msimple -t"Your fire entity does some strange combat maneuver but doesn't hit anything."
/def -p10 -F -P1BCblue -mregexp -t"(Entity sense:) (.+)"

/def -p10 -F -aBCgreen -mregexp -t"Air entity embraces (.+) with its wispy tendrils."
/def -p10 -F -aBCred -msimple -t"Your air entity falters and its wispy tendrils fall to its sides." = \
	/echo -aBCred SUFFOCATING EMBRACE IS DOWN!
 
/def -p10 -F -aBCred -msimple -t"Your entity loses its concentration and cannot do the skill." = \
	/if ({current_skill} =~ {air_skill}) \
		/echo -aBCred SUFFOCATING EMBRACE IS DOWN! %;\
	/endif

/def -p10 -F -aBCred -msimple -t"Your earth entity hunches down looking much less solid than a second ago." = \
	/if ({current_skill} =~ {earth_skill}) \
		/echo -aBCred EARTHEN COVER IS DOWN! %;\
	/endif

/def -p10 -F -aBCwhite -mregexp -t"(.+) entity starts concentrating on a new offensive skill."
/def -p10 -F -aCblue -msimple -t"Your entity is prepared to do the skill."



