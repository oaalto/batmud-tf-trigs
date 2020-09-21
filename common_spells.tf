;; Water Walking
/def cast_water_walking =\
	/if (strlen({1}) > 0)\
                /send @cast water walking at %{*} %;\
	/else \
	        /send @cast water walking at me %;\
	/endif

/alias cww /cast_water_walking %{*}

;; Invisibility
/def cast_invisibility =\
        /if (strlen({1}) > 0)\
                /send @cast invisibility at %{*} %;\
        /else \
                /send @cast invisibility at me %;\
        /endif

/alias cinv /cast_invisibility %{*}

;; Infravision
/def cast_infravision =\
        /if (strlen({1}) > 0)\
                /send @cast infravision at %{*} %;\
        /else \
                /send @cast infravision at me %;\
        /endif

/alias cinf /cast_infravision %{*}
