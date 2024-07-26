/def cast_teleport_with_error = \
	/send @cast teleport with error

/alias ctwe /cast_teleport_with_error

/def cast_teleport_without_error = \
  /send @cast teleport without error

/alias ctw /cast_teleport_without_error

/def cast_relocate = \
	/send @cast 'relocate' %{*}

/alias cr /cast_relocate %{*}

/def cast_heavy_weight = \
	/if (strlen({1}) > 0) \
		/send @cast heavy weight at %{*} %;\
	/else \
		/send @cast heavy weight at me %;\
	/endif

/alias chw /cast_heavy_weight %{*}

