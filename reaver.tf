/set prayer_done=0
/set cast_feast=0
/set cast_blood_seeker=0
/set cast_call_armour=0
/set cast_spirit_drain=0
/set cast_black_hole=0

;; Reaver Threaten
/def reaver_threaten =\
	/if (strlen({1}) > 0)\
		/send @reaver threaten %{*} %;\
	/endif

/alias rt /reaver_threaten %{*}
/gag "Can only be used once per 10 minutes."

;; SKILLS

;; Scythe Swipe
/def use_scythe_swipe = \
	/if (strlen({1}) > 0) \
		/reaver_threaten %{*} %;\
        /send @target %{*} %;\
    /endif %;\
	/send use 'scythe swipe' %{*}

/alias us /use_scythe_swipe %{*}

;; Rampant Cutting
/def use_rampant_cutting = \
	/if (strlen({1}) > 0) \
		/reaver_threaten %{*} %;\
        /send @target %{*} %;\
    /endif %;\
	/send use 'rampant cutting' %{*}

/alias urc /use_rampant_cutting %{*}

;; Reaver strike
/def use_reaver_strike = \
	/if (strlen({1}) > 0) \
		/reaver_threaten %{*} %;\
    	/send @target %{*} %;\
    /endif %;\
	/send use 'reaver strike' %{*}

/alias urs /use_reaver_strike %{*}

;; Blood harvest
/def use_blood_harvest = \
	/if (strlen({1}) > 0) \
		/reaver_threaten %{*} %;\
		/send @target %{*} %;\
	/endif %;\
	/send use 'blood harvest' %{*}

/alias dm /use_blood_harvest %{*}

;; Reave Shield
/def use_reave_shield = \
	/if (strlen({1}) > 0) \
		/send @target %{*} %;\
	/endif %;\
	/send use 'reave shield' %{*}

/alias res /use_reave_shield %{*}

;; Reave Weapon
/def use_reave_weapon = \
	/if (strlen({1}) > 0) \
		/send @target %{*} %;\
	/endif %;\
	/send @use 'reave weapon' %{*}

/alias rea /use_reave_weapon %{*}

;; Reave Armour
/def use_reave_armour = \
	/if (strlen({1}) > 0) \
		/send @target %{*} %;\
	/endif %;\
	/send @use 'reave armour' %{*}

/alias rea /use_reave_armour %{*}

;; True Reaving
/def use_true_reaving = \
	/if (strlen({1}) > 0) \
		/reaver_threaten %{*} %;\
        /send @target %{*} %;\
    /endif %;\
	/send use 'true reaving' %{*}

/alias utr /use_true_reaving %{*}

;; Corrosive cut
/def use_corrosive_cut = \
	/if (strlen({1}) > 0) \
		/reaver_threaten %{*} %;\
		/send @target %{*} %;\
	/endif %;\
	/send use 'corrosive cut' %{*}

/alias uccut /use_corrosive_cut %{*}

/def use_breath_of_doom = \
	/if (strlen({1}) > 0) \
		/reaver_threaten %{*} %;\
		/send @target %{*} %;\
	/endif %;\
	/send @use 'breath of doom' %{*}

/alias ubd /use_breath_of_doom %{*}

;; Prayer to Destruction
/def use_prayer_to_destruction = \
	/if (strlen({1}) > 0) \
		/send @use prayer to destruction at %{*} %;\
	/else \
		/echo No target! %;\
	/endif

/alias upd /use_prayer_to_destruction %{*}

/def -p10000 -F -msimple -t'You bow your head and concentrate on the destructive energies you have collected.' =\
	/set prayer_done=1 %;\
	/if ({cast_feast}) \
		/cast_shattered_feast %;\
	/elseif ({cast_blood_seeker}) \
		/cast_blood_seeker %;\
	/elseif ({cast_call_armour}) \
		/cast_call_armour %;\
	/elseif ({cast_spirit_drain}) \
		/cast_spirit_drain %{spirit_drain_target} %;\
	/elseif ({cast_black_hole}) \
		/cast_black_hole %;\
	/endif

;; SPELLS

;; Word of Spite
/def cast_word_of_spite = \
	/reaver_threaten %{*} %;\
	/if (strlen({1}) > 0) \
        	/send @target %{*} %;\
	/endif %;\
	/send cast 'word of spite' %{*}

/alias cs /cast_word_of_spite %{*}

;; Word of Blasting
/def cast_word_of_blasting = \
	/reaver_threaten %{*} %;\
	/if (strlen({1}) > 0) \
        	/send @target %{*} %;\
	/endif %;\
	/send cast 'word of blasting' %{*}

/alias cb /cast_word_of_blasting %{*}

;; Word of Destruction
/def cast_word_of_destruction = \
	/reaver_threaten %{*} %;\
	/if (strlen({1}) > 0) \
        	/send @target %{*} %;\
	/endif %;\
	/send cast 'word of destruction' %{*}

/alias cwd /cast_word_of_destruction %{*}

;; Word of Slaughter
/def cast_word_of_slaughter = \
	/reaver_threaten %{*} %;\
	/if (strlen({1}) > 0) \
        	/send @target %{*} %;\
	/endif %;\
	/send cast 'word of slaughter' %{*}

/alias cws /cast_word_of_slaughter %{*}

;; Word of Genocide
/def cast_word_of_genocide = \
	/reaver_threaten %;\
	/if (strlen({1}) > 0) \
		/send @target %{*} &;\
	/endif %;\
	/send @cast 'word of genocide' %{*}

/alias cwg /cast_word_of_genocide %{*}

;; Word of Attrition
/def cast_word_of_attrition = \
	/if (strlen({1}) > 0) \
		/send @cast word of attrition at %{*} %;\
	/else \
		/echo No target! %;\
	/endif

/alias cwa /cast_word_of_attrition %{*}

;; Shattered Feast
/def cast_shattered_feast = \
	/if ({prayer_done}) \
		/send @cast shattered feast at amount 100 %;\
	/else \
		/set cast_feast=1 %; \
		/use_prayer_to_destruction spell %;\
	/endif

/alias csf /cast_shattered_feast

;; Black hole
/def cast_black_hole = \
	/if ({prayer_done}) \
		/send @cast black hole %;\
	/else \
		/set cast_black_hole=1 %;\
		/use_prayer_to_destruction spell %;\
	/endif

/alias cbh /cast_black_hole

/def -p10000 -F -msimple -t'You start chanting.' = \
	/set prayer_done=0

/def -p10000 -F -mregexp -t'That I have set free, return to me' start_meditation = \
	/set cast_feast=0 %;\
	/set cast_blood_seeker=0 %;\
	/set cast_call_armour=0 %;\
	/set cast_spirit_drain=0 %;\
	/set cast_black_hole=0

;; Blood Seeker
/def cast_blood_seeker = \
	/if ({prayer_done}) \
		/send @cast blood seeker at amount 100 %;\
	/else \
        /set cast_blood_seeker=1 %;\
        /use_prayer_to_destruction spell %;\
    /endif

/alias cbs /cast_blood_seeker

;; Reaping of bile
/def cast_reaping_of_bile = \
	/send @cast reaping of bile %;\

/alias crb /cast_reaping_of_bile

;; Call armour
/def cast_call_armour = \
	/if ({prayer_done}) \
		/send @cast call armour at amount %{*} %;\
	/else \
        /set cast_call_armour=1 %;\
        /use_prayer_to_destruction spell %;\
    /endif

/alias cca /cast_call_armour %{*}

;; Spirit drain
/def cast_spirit_drain = \
	/if ({prayer_done}) \
		/send @cast spirit drain at %{*} amount 100 %;\
	/else \
		/set cast_spirit_drain=1 %;\
	/set spirit_drain_target=%{*} %;\
		/use_prayer_to_destruction spell %;\
	/endif

/alias csd /cast_spirit_drain %{*}

;; Infravision
/def cast_infravision = \
	/if (strlen({*}) > 0) \
		/send @cast infravision at %{*} %;\
	/else \
		/send @cast infravision at me %;\
	/endif

/alias cinf /cast_infravision %{*}

;; Hilites
/def -p10 -F -P1BCwhite -mregexp -t"You speak the ancient (.+) '(.+)'"
/def -p10 -F -P2BCwhite -mregexp -t"You speak the ancient (.+) '(.+)'"

/def -p10 -F -P1Ccyan -mregexp -t"You feel you have released (.+) amount of destructive energy."
/def -p10 -F -P1Ccyan -mregexp -t"You feel you have released (.+) amounts of destructive energy."

/def -p10 -F -P1BCred -mregexp -t"You score a (KILLING BLOW) on (.+)!"

/def -p10 -F -aBCred -mregexp -t"Your frenzied attempts to destroy (.+) are easily deflected."

/def -p10 -F -aCblue -mregexp -t"You make a quick slash across (.+) body with your weapon."
/def -p10 -F -aCblue -mregexp -t"You slash upwards across (.+) torso with great force."
/def -p10 -F -aCblue -mregexp -t"...and then strike again with a downwards blow!"
/def -p10 -F -aCblue -mregexp -t"You score a nasty cut on (.+) shoulder."
/def -p10 -F -aCblue -mregexp -t"You cut (.+) arm open with a powerful strike."
/def -p10 -F -aCblue -mregexp -t"You attack and swing again"
/def -p10 -F -aCblue -mregexp -t"You attack and swing a THIRD time"
/def -p10 -F -aCblue -mregexp -t"You follow with a third strike to the cheek, coating (.+) face with blood!"
/def -p10 -F -aCblue -mregexp -t"You attack and immediately hit (.+) stomach, throwing a crimson spray!"
/def -p10 -F -aCblue -mregexp -t"You FINALLY shove your weapon right through (.+) chest!"
/def -p10 -F -aBCred -mregexp -t"(.+) shifts position and you cannot hit the (.+) time."

/def -p10 -F -aBCmagenta -mregexp -t"You feel the power slip from (.+)."
/def -p10 -F -aBCmagenta -mregexp -t"You see (.+) revert to its normal shape."

