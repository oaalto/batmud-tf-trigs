/set dismounted=0
/setenv mount_summoned=0

/def -p10000 -F -mregexp -t"^[\*]+ Round .* [\*]+$" = \
	/send @x %{tzarakk_mount}

/def -p10000 -F -mregexp -t"^A faint fog-like substance flows from corpse of (.+) to (.+)\'s lifeless eyes replenishing it (.+)\.$" = \
	/if ({P1} =~ {tzarakk_mount}) \
		/send @tzarakk chaosfeed corpse;x %{tzarakk_mount} %;\
	/endif

/def -p1000 -F -aBCred -msimple -t"The ice makes a sound below your mount, scaring it!" = \
	/echo -aBCred *************** DISMOUNTED!! *************** %;\
	/set dismounted=1

/def -p10 -F -aBCred -msimple -t"You are knocked off your mount!" = \
	/echo -aBCred *************** DISMOUNTED!! *************** %;\
	/set dismounted=1

/def -p10 -F -aBCred -msimple -t"Your mount throws you!" = \
        /echo -aBCred *************** DISMOUNTED!! *************** %;\
	/set dismounted=1

/def -p1000 -F -mregexp -t'(.+) appears in a violent burst of chaos.' = \
	/if ({P1} =~ {tzarakk_mount}) \
	    /send @mount %{tzarakk_mount} %;\
	/endif

/def -p10000 -F -aBCred -mregexp -t'(.+) is DEAD, R.I.P.' = \
    /if ({dismounted}) \
        /send @mount %{tzarakk_mount} %;\
    /endif

/def -p10000 -F -msimple -t'You get up on (.+) and begin to ride.' = \
	/set dismounted=0 %;\
	/set mount_summoned=1

/def -p1000 -F -aCred -msimple -t"Your mount snorts and does not respond."

/def set_feed_mode = \
	/send @rip_action set get all from corpse;tzarakk chaosfeed corpse;tzarakk chaosfeed corpse;drop zinc;drop mowgles

/alias feed_mode /set_feed_mode

/def set_heal_mode = \
	/send @rip_action set get all from corpse;use harvest soul at corpse;drop zinc;drop mowgles

/alias heal_mode /set_heal_mode

/def set_hunt_mode = \
        /send @rip_action set get all from corpse;tzarakk chaosfeed corpse;drop zinc;drop mowgles

/alias hunt_mode /set_hunt_mode

/def do_sleep = \
    /send @dismount;sleep

/alias sleep /do_sleep

/def -p10000 -F -msimple -t'You awaken from your short rest, and feel slightly better.' = \
    /send @mount %{tzarakk_mount}

/def -p10000 -F -msimple -t"You don't quite feel like camping at the moment." = \
	/send @mount %{tzarakk_mount}

/def -p10000 -F -msimple -t"You wake up!" = \
    /send @mount %{tzarakk_mount}

/def -p1000 -F -msimple -t"It'll be inconvenient to camp here with all this water." = \
	/send @mount %{tzarakk_mount}

;; Status lines need to be duplicated so that we don't gag mob shapes.
/def -p1000 -F -ag -mregexp -t'^Orthos is (.+) \((.+)%\)' = \
	/set status_line_2=Orthos (%{P2}%%) %{spawn_timer}

/def -p1000 -F -ag -mregexp -t'^Vedir is (.+) \((.+)%\)' = \
	/set status_line_2=Vedir (%{P2}%%) %{spawn_timer}

/def cast_steed_of_tzarakk = \
	/send @cast steed of tzarakk

/alias cst /cast_steed_of_tzarakk

/def -p10000 -F -msimple -t'A bizarre mist starts to form itself rapidly, and within moments a dark morbid' = \
    /send @mount %{tzarakk_mount} %;\
    /set mount_summoned=1 %;\
    /set_feed_mode

/def cast_banish_mount = \
    /send @cast banish mount

/alias cdis /cast_banish_mount

/def -p1000 -F -rsimple -t"You pray for Tzarakk to receive his mount." = \
	/set mount_summoned=0 %;\
	/send @rip_action set get all from corpse;dig grave;drop zinc;drop mowgles %;\
	/set status_line_2=

/def use_create_hunting_trophy = \
	/send @use create hunting trophy at corpse

/alias uht /use_create_hunting_trophy

/def use_harvest_soul = \
    /send @use harvest soul at corpse

/alias uhs /use_harvest_soul

/def cast_preserve_corpse = \
	/send @cast preserve corpse at corpse

/alias cpc /cast_preserve_corpse

/def use_trample = \
	/if (strlen({1}) > 0) \
		/send @target %{*} %;\
	/endif %;\
	/send @use 'trample' %{*}

/alias ut /use_trample %{*}

/def use_rampage = \
	/if (strlen({1}) > 0) \
		/send @target %{*} %;\
	/endif %;\
	/send @use 'rampage' %{*}

/alias ur /use_rampage %{*}

/def use_charge = \
	/if (strlen({1}) > 0) \
		/send @target %{*} %;\
	/endif %;\
	/send @use 'charge' %{*}

/alias cs /use_charge %{*}

/def cast_summon_dire_boar = \
	/send @cast summon dire boar

/alias csdb /cast_summon_dire_boar

;; Other Guild's Skills

;; Meditation
/def use_meditation = \
	/send @dismount;use meditation

/alias med /use_meditation

/def tzarakk_use_dark_meditation = \
	/send @dismount %;\
	/use_dark_meditation %{*}

/alias dmed /tzarakk_use_dark_meditation %{*}

/def -p10000 -F -msimple -t"Something disturbs you and you cannot concentrate any longer." = \
    /send @mount %{tzarakk_mount}

/def -p100 -F -mregexp -t"You get up on (.+) and begin to ride." = \
       /send @wield weapon1 in 1;wield weapon2 in 2

/def -p100 -F -mregexp -t"You can not hold (.+)!" = \
       /send @wield weapon1 in 1

