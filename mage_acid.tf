/def cast_disruption = \
	/if (strlen({1})) \
		/send @target %{*} %;\
	/endif %;\
	/send @cast 'disruption' %{*}

/alias cdi /cast_disruption %{*}

/def cast_acid_arrow = \
	/if (strlen({1}) > 0) \
		/send @target %{*} %;\
	/endif %;\
	/send @cast 'acid arrow' %{*}

/alias caa /cast_acid_arrow %{*}

/def cast_acid_blast = \
	/if (strlen({1})) \
	       /send @target %{*} %;\
	/endif %;\
	/send @cast 'acid blast' %{*}

/alias cab /cast_acid_blast %{*}

/def cast_acid_storm = \
	/if (strlen({1}) > 0) \
		/send @target %{*} %;\
	/endif \
	/send @cast 'acid storm' %{*}

/alias cas /cast_acid_storm %{*}

/def cast_lock_biter = \
	/send @cast 'lock biter' %{*}

/alias clb /cast_lock_biter %{*}

