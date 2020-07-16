/def cast_disruption = \
	/if (strlen({1}) \
		/send @target %{*} %;\
	/endif %;\
	/send @cast 'disruption' %{*}

/alias cdi /cast_disruption %{*}

