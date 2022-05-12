/def -p10 -F -aBCgreen -msimple -t"Your Shadow Familiar shrieks as it advances a level!"

/def -F -aBCred -msimple -t"The surge of magic backlashes at you, just when you're finishing the spell."
/def -F -aBCred -msimple -t"You fail to chant the spell correctly."
/def -F -aBCred -msimple -t"At the last moment you notice the spell is about to turn at you, and abort the"

/def -F -aCgreen -mregexp -t"(.+)'s wounds spill blood onto the floor."

/def rip_familiar_consume = /send @rip_action set get all from corpse;familiar consume corpse;drop zinc;drop mowgles

/def -F -msimple -t "The connection between you and your blade fades away." = /echo -aBCmagenta "Command Blade down!"

/alias rip_consume /rip_familiar_consume

/def rip_dissect_corpse = /send @rip_action set get all from corpse;drop zinc;drop mowgles

/alias rip_dissect /rip_dissect_corpse

;; Sting of Aelena
/def cast_sting_of_aelena = \
    /send @target %{*};cast 'sting of aelena' %{*}

/alias csa /cast_sting_of_aelena %{*}

;; Bite of the black widow
/def cast_bite_of_the_black_widow = \
    /send @target %{*};cast 'bite of the black widow' %{*}

/alias cb /cast_bite_of_the_black_widow %{*}

/def cast_command_blade = \
    /send @cast command blade

/alias ccb /cast_command_blade

/def use_wound = \
    /send @target %{*};use 'wound' %{*}

/alias uw /use_wound %{*}

/def use_thrust = \
	/send @target %{*};use 'thrust' %{*}

/alias ut /use_thrust %{*}

/def use_dissection = \
    /send @use dissection at corpse try %{1} %{2}

/alias ud /use_dissection %{*}

;; Familiar Stuff

/def familiar_consume = /send @familiar consume %{*}
/alias fc /familiar_consume %{*}

/def familiar_store_slow_death = /send @familiar store slow death
/alias fssd /familiar_store_slow_death

/def familiar_store_rusted_blade = /send @familiar store rusted blade
/alias fsrb /familiar_store_rusted_blade

/def familiar_store_black_trance = /send @familiar store black trance
/alias fsbt /familiar_store_black_trance

