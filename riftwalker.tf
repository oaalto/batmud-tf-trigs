/set has_entity=0

;; Status line

/def -p1000 -F -ag -mregexp -t'^--=  (.+)  HP:(.+)\((.+)\) \[(.*)\] \[(.*)\] \[(.*)\]  =--$' = \
	/set status_line_2=%{P1}: %{P2}($[set_white({P3})]) [%{P4}] %{P5} %{P6}

/def -p1000 -F -msimple -t'Your entity begins to warp, seeming to become unstable. It folds in on itself and vanishes!' = \
	/set status_line_2=

/def -p1000 -F -msimple -t'Your soul cries out in anguish as your faithful companion is slain!' = \
	/set status_line_2=

/def -p1000 -F -aCgreen -msimple -t'A crumpled piece of paper flies through the air and you grab it!' = \
	/send keep paper

;; This requires battle listen all 1
/def -p1000 -F -aCgreen -mregexp -t'(Fire|Air|Water|Earth) entity hits (.*) (once|twice|thrice) (.*).'

/def -p1000 -F -aCred -mregexp -t"(Fire|Air|Water|Earth) entity is stunned."

/def -F -P1Cred -mregexp -t'(Fire entity)'
/def -F -P1Ccyan -mregexp -t'(Air entity)'
/def -F -P1Cblue -mregexp -t'(Water entity)'
/def -F -P1Cyellow -mregexp -t'(Earth entity)'

;; Entity Skills
/set fire_skill=blazing sunder
/set air_skill=suffocating embrace
/set earth_skill=earthen cover
/set water_skill=subjugating backwash

;; Init
/set current_skill=blazing sunder

/def set_entity_skill = \
	/if ({*} =~ "fire") \
		/set current_skill=%{fire_skill} %;\
	/elseif ({*} =~ "air") \
		/set current_skill=%{air_skill} %;\
	/elseif ({*} =~ "earth") \
		/set current_skill=%{earth_skill} %;\
	/elseif ({*} =~ "water") \
		/set current_skill=%{water_skill} %;\
	/else \
		/echo Unknown skill %{*}! %;\
	/endif %;\
	/set has_entity=1

/alias ufire /set_entity_skill fire
/alias uair /set_entity_skill air
/alias uearth /set_entity_skill earth
/alias uwater /set_entity_skill water

/def -p1000 -F -mregexp -t"(.*) fire entity (.*) with power \[yours\]" = \
	/set_entity_skill fire

/def -p1000 -F -mregexp -t"(.*) air entity (.*) with power \[yours\]" = \
        /set_entity_skill air

/def -p1000 -F -mregexp -t"(.*) water entity (.*) with power \[yours\]" = \
        /set_entity_skill water

/def -p1000 -F -mregexp -t"(.*) earth entity (.*) with power \[yours\]" = \
        /set_entity_skill earth

/def use_current_skill = \
	/send @target %{*};gem cmd target %{*};gem cmd use '%{current_skill}' %{*}
	
/alias ccs /use_current_skill %{*}

;; Show Entity stats
/def gem_entity = \
	/if (strlen({1}) > 0) \
		/send @gem entities %{*} %;\
	/else \
		/if ({current_skill} =~ {fire_skill}) \
			/send @gem entities fire %;\
		/elseif ({current_skill} =~ {air_skill}) \
			/send @gem entities air %;\
		/elseif ({current_skill} =~ {water_skill}) \
        	        /send @gem entities water %;\
		/elseif ({current_skill} =~ {earth_skill}) \
			/send @gem entities earth %;\
		/endif %;\
	/endif

/alias estat /gem_entity %{*}

;; Summon rift entity
/def cast_summon_entity = \
	/send @cast summon rift entity at %{*} %;\
	/set_entity_skill %{*}
	/set has_entity=1

/alias csum /cast_summon_entity %{*}

;; Dismiss rift entity
/def cast_dismiss_entity = \
	/send @cast dismiss rift entity
	/set has_entity=0

/alias cdis /cast_dismiss_entity

;; Beckon rift entity
/def cast_beckon_entity = \
	/send @cast beckon rift entity

/alias cb /cast_beckon_entity

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

;; Start Battle (Dimensional leech)
/def start_battle3 = \
	/send @target %{*};gem cmd target %{*};cast 'dimensional leech' %{*};gem cmd use '%{current_skill}' %{*}

/alias csd /start_battle3 %{*}

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
/def cast_mirror_image_entity = \
	/send @cast mirror image at entity

/alias cmie /cast_mirror_image_entity

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

/def -p10 -F -aBCblue -mregexp -t"Air entity embraces (.+) with its wispy tendrils."
/def -p10 -F -aBCred -msimple -t"Your air entity falters and its wispy tendrils fall to its sides." = \
	/echo -aBCred SUFFOCATING EMBRACE IS DOWN!
 
/def -p10 -F -aBCred -msimple -t"Your entity loses its concentration and cannot do the skill." = \
	/if ({current_skill} =~ {air_skill}) \
		/echo -aBCred SUFFOCATING EMBRACE IS DOWN! %;\
	/elseif ({current_skill} =~ {earth_skill}) \
		/echo -aBCred EARTHEN COVER IS DOWN! %;\
	/elseif ({current_skill} =~ {water_skill}) \
		/echo -aBCred SUBJUGATING BACKWASH IS DOWN! %;\
	/endif

/def -p10 -F -aBCred -msimple -t"Your earth entity hunches down looking much less solid than a second ago." = \
	/if ({current_skill} =~ {earth_skill}) \
		/echo -aBCred EARTHEN COVER IS DOWN! %;\
	/endif

/def -p10 -F -aBCblue -mregexp -t"Water entity starts to glow, and its skin starts to foam like waves crashing against a rocky shore."
/def -p10 -F -aBCred -msimple -t"Your water entity stops glowing and its skin becomes still." = \
        /if ({current_skill} =~ {water_skill}) \
                /echo -aBCred SUBJUGATING BACKWASH IS DOWN! %;\
	/endif

/def -p10 -F -aBCwhite -mregexp -t"(.+) entity starts concentrating on a new offensive skill."
/def -p10 -F -aCblue -msimple -t"Your entity is prepared to do the skill."



