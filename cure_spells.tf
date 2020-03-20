;; Cure Spells
/def -p10 -F -P1BCcyan -mregexp -t"You heal (.+) of your own wounds." = \
        /recast_clw %;\
        /recast_csw

/def -p10 -F -aBCgreen -mregexp -t"^[^ ]+ is not wounded."

/def -p100 -F -mregexp -t"You heal all of your wounds." = \
        /unset_counters

/def -p100 -F -aBCgreen -mregexp -t"Fueryon is not wounded." = \
        /unset_counters

/def -p100 -F -aBCgreen -mregexp -t"Odefu is not wounded." = \
        /unset_counters

/def -p100 -F -msimple -t"You interrupt the spell." = \
        /unset_counters

/def unset_counters = \
        /unset clw_counter %;\
        /unset clw_count %;\
        /unset csw_counter %;\
        /unset csw_count

/def recast_clw = \
        /if ({clw_counter} >= 1 & {clw_counter} < {clw_count}) \
                /cast_cure_light_wounds me %;\
                /set clw_counter=%{clw_counter} + 1 %;\
        /else \
                /unset clw_counter %;\
                /unset clw_count %;\
        /endif

/def recast_csw = \
        /if ({csw_counter} >= 1 & {csw_counter} < {csw_count}) \
                /cast_cure_serious_wounds me %;\
                /set csw_counter=%{csw_counter} + 1 %;\
        /else \
                /unset csw_counter %;\
                /unset csw_count %;\
        /endif

/def cast_clw_10_times = \
        /set clw_counter=1 %;\
        /set clw_count=10 %;\
        /cast_cure_light_wounds %{*}

/alias clw10 /cast_clw_10_times %{*}

/def cast_csw_10_times = \
        /set csw_counter=1 %;\
        /set csw_count=10 %;\
        /cast_cure_serious_wounds %{*}

/alias csw10 /cast_csw_10_times %{*}

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

