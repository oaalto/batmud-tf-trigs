
;; Cause light wounds
/def cast_cause_light_wounds =\
        /send @target %{*};cast 'cause light wounds' %{*} %;\

/alias cclw /cast_cause_light_wounds %{*}

;; Cause serious wounds
/def cast_cause_serious_wounds =\
        /send @target %{*};cast 'cause serious wounds' %{*} %;\

/alias ccsw /cast_cause_serious_wounds %{*}

;; Cause critical wounds
/def cast_cause_critical_wounds =\
        /send @target %{*};cast 'cause critical wounds' %{*} %;\

/alias ccw /cast_cause_critical_wounds %{*}

;; Hemorrhage
/def cast_hemorrhage = \
        /if (strlen({1}) > 0) \
                /send @target %{*} %;\
        /endif %;\
        /send cast 'hemorrhage' %{*}

/alias ch /cast_hemorrhage %{*}

;; Aneurysm
/def cast_aneurysm = \
        /if (strlen({1}) > 0) \
                /send @target %{*} %;\
        /endif %;\
        /send cast 'aneurysm' %{*}

/alias ca /cast_aneurysm %{*}

;; Harm body
/def cast_harm_body = \
	/if (strlen({1}) > 0) \
		/send @target %{*} %;\
	/endif %;\
	/send cast 'harm body' %{*}

/alias chb /cast_harm_body %{*}

;; Damn Armament
/def cast_damn_armament = \
        /send @cast 'damn armament' weapon2

/alias cda /cast_damn_armament

/def -F -aCred -mregexp -t"The curse on your (.+) fades away."

;; Mellon Collie
/def cast_mellon_collie = \
        /send @target %{*};cast 'mellon collie' %{*} %;\

/alias cmc /cast_mellon_collie %{*}

;; Aura of Hate
/def cast_aura_of_hate = \
	/send cast aura of hate

/alias caoh /cast_aura_of_hate

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

/def -p10 -F -aCred -mregexp -t"You fail to reach (.+)."
/def -p10 -F -aCgreen -mregexp -t"You harm (.+) (a little|some|a good bit|a lot|really much)."

/def -p10 -F -aCgreen -msimple -t"You feel like you just got slightly better in seething fervor."

/def -p10000 -F -mregexp -t'DEAD, R.I.P.' = \
	/send @fervor status

