/def cast_hemorrhage = \
	/if (strlen({1}) > 0) \
		/send target %{*} %;\
	/endif \
	/send cast 'hemorrhage' %{*} %;\

/alias ch /cast_hemorrhage %{*}


/def cast_mobile_cannon = \
	/send cast 'mobile cannon' %{*}

/alias cmc /cast_mobile_cannon %{*}

