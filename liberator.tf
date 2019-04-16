;; Trigs

/def -p10000 -F -aBCmagenta -msimple -t'You swing and miss your mark!'

;; SPELLS

;; Ghost light
/def cast_ghost_light =\
	/send @target %{*};liberator select weakest non armoursmith,guardian,weaponsmith,soldier;cast 'ghost light' %{*}

/alias cgl /cast_ghost_light %{*}

;; Ghost chill
/def cast_ghost_chill =\
	/send @target %{*};liberator select weakest non armoursmith,guardian,weaponsmith,soldier;cast 'ghost chill' %{*}

/alias cgc /cast_ghost_chill %{*}

;; Ghost armour
/def cast_ghost_armour =\
	/send @liberator select weakest armoursmith;cast ghost armour %;\

/alias cga /cast_ghost_armour

;; Ghost link
/def cast_ghost_link =\
	/send @liberator select weakest non armoursmith,guardian,weaponsmith,soldier;cast ghost link at me %;\

/alias clink /cast_ghost_link

;; Restful sleep
/def cast_restful_sleep =\
	/send @liberator select weakest non armoursmith,guardian,weaponsmith,soldier;cast restful sleep %;\

/alias crs /cast_restful_sleep

;; SKILLS

;; Ghost slash
/def use_ghost_slash =\
	/send @target %{*};liberator select weakest soldier;use 'ghost slash' %{*}

/alias ugs /use_ghost_slash %{*}

;; Radiant slash
/def use_radiant_slash =\
	/send @target %{*};liberator select weakest non armoursmith,guardian,weaponsmith,soldier;use 'radiant slash' %{*}

/alias urs /use_radiant_slash %{*}




