;; Water Walking
/def cast_water_walking =\
	/if (strlen({1}) > 0)\
                /send @cast water walking at %{*} %;\
	/else \
	        /send @cast water walking at me %;\
	/endif

/alias cww /cast_water_walking %{*}

