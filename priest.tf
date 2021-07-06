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

/def -p10 -F -aCgreen -msimple -t"You feel like you just got slightly better in seething fervor."

/def -p10000 -F -mregexp -t'DEAD, R.I.P.' = \
	/send @fervor status

