;; Trigs

/def -p10000 -F -aBCred -msimple -t'You swing and miss your mark!'
/def -p10000 -F -aBCred -msimple -t"Your greater light spell flickers briefly and disappears."

/def set_autoselect = \
	/send @liberator autoselect weakest non armoursmith,guardian,weaponsmith,soldier,locksmith,ranger

;; SPELLS

;; Ghost light
/def cast_ghost_light = \
	/send @target %{*};liberator select weakest non armoursmith,guardian,weaponsmith,soldier,locksmith,ranger;cast 'ghost light' %{*}

/alias cgl /cast_ghost_light %{*}

;; Ghost chill
/def cast_ghost_chill = \
	/send @target %{*};liberator select weakest non armoursmith,guardian,weaponsmith,soldier,locksmith,ranger;cast 'ghost chill' %{*}

/alias cgc /cast_ghost_chill %{*}

;; Ghost armour
/def cast_ghost_armour = \
	/send @liberator select weakest armoursmith;cast ghost armour %;\

/alias cga /cast_ghost_armour

;; Ghost link
/def cast_ghost_link = \
	/send @liberator select weakest non armoursmith,guardian,weaponsmith,soldier,locksmith,ranger;cast ghost link at me %;\

/alias clink /cast_ghost_link

;; Restful sleep
/def cast_restful_sleep = \
	/send @liberator select weakest non armoursmith,guardian,weaponsmith,soldier,locksmith,ranger;cast restful sleep %;\

/alias crs /cast_restful_sleep

;; Holy glow
/def cast_holy_glow = \
	/send @cast holy glow

/alias chg /cast_holy_glow

;; SKILLS

;; Slash
/def use_slash = \
	/if (strlen({1}) > 0) \
		/send @target %{*} %;\
	/endif %;\
	/send @use 'slash' %{*}

/alias us /use_slash %{*}

;; Ghost slash
/def use_ghost_slash = \
	/if (strlen({1}) > 0) \
		/send @target %{*} %;\
	/endif %;\
	/send @liberator select weakest soldier non armoursmith,guardian,weaponsmith,locksmith,ranger;use 'ghost slash' %{*}

/alias ugs /use_ghost_slash %{*}

;; Radiant slash
/def use_radiant_slash = \
	/if (strlen({1}) > 0) \
                /send @target %{*} %;\
        /endif %;\
	/send @liberator select weakest non armoursmith,guardian,weaponsmith,soldier,locksmith,ranger;use 'radiant slash' %{*}

/alias urs /use_radiant_slash %{*}

;; Channeling ghosts

/def use_ghost_channeling_at_fire = \
	/send liberator select weakest ranger;use 'ghost channeling' fire

/alias ugcf /use_ghost_channeling_at_fire

/def use_ghost_channeling_at_camp = \
	/send liberator select weakest ranger;use 'ghost channeling' camp

/alias ugcc /use_ghost_channeling_at_camp




