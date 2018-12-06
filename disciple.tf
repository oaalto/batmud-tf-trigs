
/def -p10 -F -aBCred -msimple -t"You feel like the pulse of chaos inside you is slowing down!" =\
	/echo -aBCred *************** SPAWN GOING DOWN!! *************** %;\


;; SKILLS

;; Chaotic Spawn
/def use_chaotic_spawn =\
	/if (strlen({1}) > 0)\
		/send @use chaotic spawn at %{*} %;\
	/else \
		/send @use chaotic spawn %;\
	/endif

/alias ucs /use_chaotic_spawn %{*}

;; Clawed Strike
/def use_clawed_strike =\
	/if (strlen({1}) > 0)\
		/send @target %{*};@use clawed strike at %{*} %;\
	/else \
		/send @use clawed strike %;\
	/endif

/alias uc /use_clawed_strike %{*}




