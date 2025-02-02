/def cast_hemorrhage = \
	/if (strlen({1}) > 0) \
		/send target %{*} %;\
	/endif %;\
	/send cast 'hemorrhage' %{*} %;\

/alias ch /cast_hemorrhage %{*}

;; Aneurysm
/def cast_aneurysm = \                                                                                                              /if (strlen({1}) > 0) \                                                                                                             /send @target %{*} %;\                                                                                              /endif %;\                                                                                                                  /send cast 'aneurysm' %{*}                                                                                                                                                                                                                      /alias ca /cast_aneurysm %{*}

/def cast_mobile_cannon = \
	/send cast 'mobile cannon' %{*}

/alias cmc /cast_mobile_cannon %{*}

;; Dark meditation
/def use_dark_meditation = \
	/if ({1} =~ "hp") \
		/send @use dark meditation at sacrifice health %;\
	/elseif ({1} =~ "sp") \
		/send @use dark meditation at sacrifice power %;\
	/else \
		/send @use dark meditation at sacrifice endurance %;\
	/endif

/alias med /use_dark_meditation

