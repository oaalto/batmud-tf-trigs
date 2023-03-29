/def cast_flame_arrow = \
	/if (strlen({1})) \
		/send @target %{*} %;\
	/endif %;\
	/send @cast 'flame arrow' %{*}

/alias cfa /cast_flame_arrow %{*}

/def cast_firebolt = \
	/if (strlen({1})) \
		/send @target %{*} %;\
	/endif %;\
	/send @cast 'firebolt' %{*}

/alias cfb /cast_firebolt %{*}

