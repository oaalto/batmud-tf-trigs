/def cast_blurred_image = \
	/if (strlen({1}) > 0) \
		/send @cast blurred image at %{*} %;\
	/elseif ({has_entity}) \
		/send @cast blurred image at entity %;\
	/else \
		/send @cast blurred image at me %;\
	/endif

/alias cbi /cast_blurred_image %{*}

/def cast_feather_weight = \
	/send @cast feather weight at %{*}

/alias cfw /cast_feather_weight %{*}

/def cast_shield_of_protection = \
	/if (strlen({1}) > 0) \
		/send @cast shield of protection at %{*} %;\
	/elseif ({has_entity}) \
		/send @cast shield of protection at entity %;\
	/else \
		/send @cast shield of protection at me %;\
	/endif

/alias csp /cast_shield_of_protection %{*}

/def cast_armour_of_aether = \
	/if (strlen({1}) > 0) \
                /send @cast armour of aether at %{*} %;\
        /elseif ({has_entity}) \
                /send @cast armour of aether at entity %;\
        /else \
                /send @cast armour of aether at me %;\
        /endif

/alias caoa /cast_armour_of_aether %{*}

