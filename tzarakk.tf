/def -p10 -F -aBCred -msimple -t"You are knocked off your mount!" =\
	/echo -aBCred *************** DISMOUNTED!! *************** %;\

/def -p10000 -F -mregexp -t'^[\*]+ Round .* [\*]+$' battle_round_tzarakk =\
	/send @x vedir

/def -p10000 -F -mregexp -t'^A faint fog-like substance flows from corpse of (.*) to Vedir's lifeless eyes replenishing it (.*)' harvest_soul =\
	/send @feed %;\
	/send @x vedir

/def set_feed_mode =\
	/send @rip_action set get all from corpse;tzarakk chaosfeed corpse;tzarakk chaosfeed corpse;drop zinc;drop mowgles

/alias feed_mode /set_feed_mode
/set_feed_mode

/def set_heal_mode =\
	/send @rip_action set get all from corpse;use harvest soul at corpse;drop zinc;drop mowgles

/alias heal_mode /set_heal_mode

