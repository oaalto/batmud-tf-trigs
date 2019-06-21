/def -p10000 -F -mregexp -t'^[\*]+ Round .* [\*]+$' = \
	/send @x vedir

/def -p10000 -F -mregexp -t'^A faint fog-like substance flows from corpse of (.*) to Vedir's lifeless eyes replenishing it (.*)' = \
	/send @feed %;\
	/send @x vedir

/def set_feed_mode = \
	/send @rip_action set get all from corpse;tzarakk chaosfeed corpse;tzarakk chaosfeed corpse;drop zinc;drop mowgles

/alias feed_mode /set_feed_mode
/set_feed_mode

/def set_heal_mode = \
	/send @rip_action set get all from corpse;use harvest soul at corpse;drop zinc;drop mowgles

/alias heal_mode /set_heal_mode

/def set_hunt_mode = \
        /send @rip_action set get all from corpse;tzarakk chaosfeed corpse;drop zinc;drop mowgles

/alias hunt_mode /set_hunt_mode

/def cast_steed_of_tzarakk = \
	/send @cast steed of tzarakk

/alias cst /cast_steed_of_tzarakk

/def -p10000 -F -msimple -t'A bizarre mist starts to form itself rapidly, and within moments a dark morbid' = /send @mount vedir

/def use_create_hunting_trophy = \
	/send @use create hunting trophy at corpse

/alias uht /use_create_hunting_trophy

