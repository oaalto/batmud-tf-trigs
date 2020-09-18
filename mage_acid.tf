/def cast_disruption = \
	/if (strlen({1})) \
		/send @target %{*} %;\
	/endif %;\
	/send @cast 'disruption' %{*}

/alias cdi /cast_disruption %{*}

/def cast_acid_blast = \
	/if (strlen({1})) \
	       /send @target %{*} %;\
	/endif %;\
	/send @cast 'acid blast' %{*}

/alias cab /cast_acid_blast %{*}

/def cast_lock_biter = \
	/send @cast 'lock biter' %{*}

/alias clb /cast_lock_biter %{*}

