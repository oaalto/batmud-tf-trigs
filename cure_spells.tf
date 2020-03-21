;; Cure Spells

/def -p10 -F -aBCgreen -mregexp -t"^[^ ]+ is not wounded."

;; Cure light wounds
/def cast_cure_light_wounds = \
	/if (strlen({1}) > 0) \
                /send @cast cure light wounds at %{*} %;\
        /else \
                /send @cast cure light wounds at me %;\
        /endif

/alias clw /cast_cure_light_wounds %{*}

;; Cure serious wounds
/def cast_cure_serious_wounds = \
	/if (strlen({1}) > 0) \
                /send @cast cure serious wounds at %{*} %;\
        /else \
                /send @cast cure serious wounds at me %;\
        /endif

/alias csw /cast_cure_serious_wounds %{*}

/def cast_cure_light_wounds_full = \
	/if (strlen({1}) > 0) \
                /send @repeat inf cast cure light wounds at %{*} %;\
        /else \
                /send @repeat inf cast cure light wounds at me %;\
        /endif

/alias clwf /cast_cure_light_wounds_full %{*}

/def cast_cure_serious_wounds_full = \
	/if (strlen({1}) > 0) \
                /send @repeat inf cast cure serious wounds at %{*} %;\
        /else \
                /send @repeat inf cast cure serious wounds at me %;\
        /endif

/alias cswf /cast_cure_serious_wounds_full %{*}
