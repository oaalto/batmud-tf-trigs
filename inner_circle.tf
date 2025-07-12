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

