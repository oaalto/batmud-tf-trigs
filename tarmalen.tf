
;; Cure Spells
/def -p10 -F -P1BCcyan -mregexp -t"You heal (little) of your own wounds."
/def -p10 -F -P1BCyellow -mregexp -t"You heal (much) of your own wounds."
/def -p10 -F -aBCgreen -mregexp -t"^[^ ]+ is not wounded."

/def -p10 -F -P2BCyellow -mregexp -t"(.+)'s spell makes you feel (some) better!"
/def -p10 -F -P2Cgreen -mregexp -t"(.+)'s spell makes you feel (very much) better!"
/def -p10 -F -P2BCgreen -mregexp -t"(.+)'s spell makes you feel (all) better!"

;; Ceremony
/def use_ceremony =\
	/send @use ceremony %;\

/alias cere /use_ceremony %{*}

;; Cure light wounds
/def cast_clw =\
	/if (strlen({1}) > 0)\
                /send @cast cure light wounds at %{*} %;\
        /else \
                /send @cast cure light wounds at me %;\
        /endif

/alias clw /cast_clw %{*}

