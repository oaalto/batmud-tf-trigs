;; SPELLS

;; Ghost light
/def cast_ghost_light =\
	/if (strlen({1}) > 0)\
		/send @target %{*};liberator select weakest non armoursmith,guardian,weaponsmith,soldier;cast ghost light at %{*} %;\
	/else \
		/send @liberator select weakest non armoursmith,guardian,weaponsmith,soldier;cast ghost light %;\
	/endif

/alias cgl /cast_ghost_light %{*}

;; Ghost chill
/def cast_ghost_chill =\
	/if (strlen({1}) > 0)\
		/send @target %{*};liberator select weakest non armoursmith,guardian,weaponsmith,soldier;cast ghost chill at %{*} %;\
	/else \
		/send @liberator select weakest non armoursmith,guardian,weaponsmith,soldier;cast ghost chill %;\
	/endif

/alias cgc /cast_ghost_chill %{*}

;; Ghost armour
/def cast_ghost_armour =\
	/send @liberator select weakest armoursmith;cast ghost armour %;\

/alias cga /cast_ghost_armour

;; Ghost link
/def cast_ghost_link =\
	/send @liberator select weakest non armoursmith,guardian,weaponsmith,soldier;cast ghost link at me %;\

/alias clink /cast_ghost_link

;; SKILLS

;; Ghost slash
/def use_ghost_slash =\
	/if (strlen({1}) > 0)\
		/send @target %{*};liberator select weakest soldier;use ghost slash at %{*} %;\
	/else \
		/send @liberator select weakest soldier;use ghost slash %;\
	/endif

/alias ugs /use_ghost_slash %{*}

;; Radiant slash
/def use_radiant_slash =\
	/if (strlen({1}) > 0)\
		/send @target %{*};liberator select weakest non armoursmith,guardian,weaponsmith,soldier;use radiant slash at %{*} %;\
	/else \
		/send @liberator select weakest non armoursmith,guardian,weaponsmith,soldier;use radiant slash %;\
	/endif

/alias urs /use_radiant_slash %{*}




