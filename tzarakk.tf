/set dismounted=0
/set mount_summoned=0

/def -p10000 -F -mregexp -t'^[\*]+ Round .* [\*]+$' = \
	/if ({mount_summoned}) \
		/send @x vedir %;\
	/endif

/def -p10000 -F -mregexp -t'^A faint fog-like substance flows from corpse of (.+) to Vedir\'s lifeless eyes replenishing it (.+)\.$' = \
	/send @tzarakk chaosfeed corpse;x vedir

/def -p1000 -F-aBCred -msimple -t'The ice makes a sound below your mount, scaring it!' = \
	/echo -aBCred *************** DISMOUNTED!! *************** %;\
    /set dismounted=1

/def -p10 -F -aBCred -msimple -t"You are knocked off your mount!" = \
	/echo -aBCred *************** DISMOUNTED!! *************** %;\
    /set dismounted=1

/def -p10 -F -aBCred -msimple -t"Your mount throws you!" = \
        /echo -aBCred *************** DISMOUNTED!! *************** %;\
    /set dismounted=1

/def -p1000 -F -msimple -t'Vedir appears in a violent burst of chaos.' = \
    /send @mount vedir

/def -p10000 -F -aBCred -mregexp -t'(.+) is DEAD, R.I.P.' = \
    /if ({dismounted}) \
        /send @mount vedir %;\
    /endif

/def -p10000 -F -msimple -t'You get up on Vedir and begin to ride.' = /set dismounted=0

/def set_feed_mode = \
	/send @rip_action set get all from corpse;tzarakk chaosfeed corpse;drop zinc;drop mowgles

/alias feed_mode /set_feed_mode

/def set_heal_mode = \
	/send @rip_action set get all from corpse;use harvest soul at corpse;drop zinc;drop mowgles

/alias heal_mode /set_heal_mode

/def do_sleep = \
    /send @dismount;sleep

/alias sleep /do_sleep

/def -p10000 -F -msimple -t'You awaken from your short rest, and feel slightly better.' = \
    /send @mount vedir

/def -p10000 -F -msimple -t"You don't quite feel like camping at the moment." = \
	/send @mount vedir

/def -p10000 -F -msimple -t"You wake up!" = \
        /send @mount vedir

;; Status line
/def -p1000 -F -ag -mregexp -t'^Vedir is (.+) \((.+)%\)' = \
	/set status_line_2=%{P0}

/def cast_steed_of_tzarakk = \
	/send @cast steed of tzarakk

/alias cst /cast_steed_of_tzarakk

/def -p10000 -F -msimple -t'A bizarre mist starts to form itself rapidly, and within moments a dark morbid' = \
    /send @mount vedir %;\
    /set mount_summoned=1 %;\
    /set_feed_mode

/def cast_banish_mount = \
    /send @cast banish mount

/alias cdis /cast_banish_mount

/def -p1000 -F -regexp -t"You pray for Tzarakk to receive his mount." = \
	/set mount_summoned=0 %;\
	/send @rip_action set get all from corpse;dig grave;drop zinc;drop mowgles	

/def use_create_hunting_trophy = \
	/send @use create hunting trophy at corpse

/alias uht /use_create_hunting_trophy

/def use_harvest_soul = \
    /send @use harvest soul at corpse

/alias uhs /use_harvest_soul

/def cast_preserve_corpse = \
	/send @cast preserve corpse at corpse

/alias cpc /cast_preserve_corpse 

