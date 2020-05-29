/def cast_magic_missile = \
	/if (strlen({1}) > 0) \
		/send @target %{*} %;\
	/endif \
	/send @cast 'magic missile' %{*}

/alias cmm /cast_magic_missile %{*}

