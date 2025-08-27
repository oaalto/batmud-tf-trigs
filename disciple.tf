/def -p10 -F -aBCred -msimple -t"You feel like the pulse of chaos inside you is slowing down!" =\
	/echo -aBCred *************** SPAWN GOING DOWN!! *************** %;\

/def -p10 -F -aBCred -msimple -t"You feel exhausted, being here in the light."
/def -p10 -F -aBCred -msimple -t"You try to attack your enemy but fall over your own feet."

/def -p10 -F -aCgreen -msimple -t"You feel the chaos pulse inside you!"

/def -p10 -F -aCgreen -mregexp -t"Your (.+) tentacle strikes (.+)."

/def -p10 -F -aCgreen -msimple -t"You force yourself deeper into the chaos frenzy!"

;; SKILLS

;; Chaotic Spawn
/def use_chaotic_spawn = \
	/send @use 'chaotic spawn' %{*}

/alias ucs /use_chaotic_spawn %{*}

/def -p10 -F -msimple -t"The pain increases as your body starts to push out organs and limbs that should not be there." = \
	/send @wearall

;; Clawed Strike
/def use_clawed_strike = \
	/send @target %{*};use 'clawed strike' %{*}

/alias uc /use_clawed_strike %{*}

;; Kiss of Death
/def use_kiss_of_death = \
	/if (strlen({1}) > 0) \
		/send @target %{*};use kiss of death at %{*} %;\
	/endif

/alias ukd /use_kiss_of_death %{*}

