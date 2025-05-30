/def -p10 -F -aCred -mregexp -t"(.*) manages to resist your claws!"
/def -p10 -F -aCgreen -mregexp -t"As (.*) drops to (.*) knees you leap in for the kill!"
/def -p10 -F -aCgreen -mregexp -t"You manage to stun (.*)."
/def -p10 -F -aCred -msimple -t"Your fists are no longer surrounded by Curath's black flames."
/def -p10 -F -aCred -msimple -t"You do a complex attack maneuver but miss."

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
	/if ({mount_summoned}) \
		/send @dismount %;\
	/endif %;\
	/send @use meditation

/alias med /use_meditation

;; Pick Locks
/def use_pick_locks = \
	/send @use pick locks at %{*}

/alias upl /use_pick_locks %{*}

;; Tiger Claw
/def cast_tiger_claw = \
	/send @target %{*};cast 'tiger claw' %{*}

/alias tc /cast_tiger_claw %{*}

;; Flame Fists
/def cast_flame_fists = \
        /send @cast flame fists

/alias cff /cast_flame_fists

;; Sneak
/def use_sneak = \
	/send use sneak

/alias usn /use_sneak

