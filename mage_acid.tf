/def cast_disruption = \
	/if (strlen({1})) \
		/send @target %{*} %;\
	/endif %;\
	/send @cast 'disruption' %{*}

/alias cdi /cast_disruption %{*}

/def cast_acid_wind = \
	/if (strlen({1}) > 0) \
		/send @target %{*} %;\
	/endif %;\
	/send @cast 'acid wind' %{*} %;\

/alias caw /cast_acid_wind %{*}

/def cast_acid_arrow = \
	/if (strlen({1}) > 0) \
		/send @target %{*} %;\
	/endif %;\
	/send @cast 'acid arrow' %{*}

/alias caa /cast_acid_arrow %{*}

/def cast_acid_ray = \
	/if (strlen({1}) > 0) \
		/send @target %{*} %;\
	/endif %;\
	/send @cast 'acid ray' %{*}

/alias car /cast_acid_ray %{*}

/def cast_acid_blast = \
	/if (strlen({1})) \
	       /send @target %{*} %;\
	/endif %;\
	/send @cast 'acid blast' %{*}

/alias cab /cast_acid_blast %{*}

/def cast_acid_rain = \
	/if (strlen({1}) > 0) \
		/send @target %{*} %;\
	/endif %;\
	/send @cast 'acid rain' %;\

/alias carain /cast_acid_rain %{*}

/def cast_acid_storm = \
	/if (strlen({1}) > 0) \
		/send @target %{*} %;\
	/endif %;\
	/send @cast 'acid storm' %{*}

/alias cas /cast_acid_storm %{*}

/def cast_lock_biter = \
	/send @cast 'lock biter' %{*}

/alias clb /cast_lock_biter %{*}

/def cast_corrosion_shield = \
	/send @cast corrosion shield at %{*}

/alias ccshield /cast_corrosion_shield %{*}

/def cast_acid_shield = \
	/send @cast acid shield at %{*}

/alias cashield /cast_acid_shield %{*}
