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

/def -p10 -F -aCred -mregexp -t"You fail to reach (.+)."
/def -p10 -F -aCgreen -mregexp -t"You harm (.+) (a little|some|a good bit|a lot|really much)."
