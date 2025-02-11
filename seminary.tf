;; Harm body
/def cast_harm_body = \
	/if (strlen({1}) > 0) \
		/send @target %{*} %;\
	/endif %;\
	/send cast 'harm body' %{*}

/alias chb /cast_harm_body %{*}

