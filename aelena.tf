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

