/set prayer_done=0
/set cast_feast=0

;; Reaver Threaten
/def reaver_threaten =\
	/if (strlen({1}) > 0)\
		/send @reaver threaten %{*} %;\
	/endif

/alias rt /reaver_threaten %{*}

;; SKILLS

;; Scythe Swipe
/def use_scythe_swipe =\
	/reaver_threaten %{*} %;\
	/send @target %{*};use 'scythe swipe' %{*}

/alias us /use_scythe_swipe %{*}

;; Rampant Cutting
/def use_rampant_cutting =\
	/reaver_threaten %{*} %;\
	/send @target %{*};use 'rampant cutting' %{*}

/alias ur /use_rampant_cutting %{*}

;; Reaver strike
/def use_reaver_strike =\
	/reaver_threaten %{*} %;\
	/send @target %{*};use 'reaver strike' %{*}

/alias urs /use_reaver_strike %{*}

;; True Reaving
/def use_true_reaving =\
	/reaver_threaten %{*} %;\
	/send @target %{*};use 'true reaving' %{*}

/alias utr /use_true_reaving %{*}

;; Prayer to Destruction
/def use_prayer_to_destruction =\
	/if (strlen({1}) > 0)\
		/send @use prayer to destruction at %{*} %;\
	/else \
		/echo No target! %;\
	/endif

/alias upd /use_prayer_to_destruction %{*}

/def -p10000 -F -msimple -t'You bow your head and concentrate on the destructive energies you have collected.' =\
	/set prayer_done=1 %;\
	/if ({cast_feast})\
		/cast_shattered_feast %;\
	/endif

;; SPELLS

;; World of Spite
/def cast_word_of_spite =\
	/reaver_threaten %{*} %;\
	/send @target %{*};cast 'word of spite' %{*}

/alias cs /cast_word_of_spite %{*}

;; World of Blasting
/def cast_word_of_blasting =\
	/reaver_threaten %{*} %;\
	/send @target %{*};cast 'word of blasting' %{*}

/alias cb /cast_word_of_blasting %{*}

;; World of Destruction
/def cast_word_of_destruction =\
	/reaver_threaten %{*} %;\
	/send @target %{*};cast 'word of destruction' %{*}

/alias cwd /cast_word_of_destruction %{*}

;; World of Slaughter
/def cast_word_of_slaughter =\
        /reaver_threaten %{*} %;\
        /send @target %{*};cast 'word of slaughter' %{*}

/alias cws /cast_word_of_slaughter %{*}

;; Word of Attrition
/def cast_word_of_attrition =\
	/if (strlen({1}) > 0)\
		/send @cast word of attrition at %{*} %;\
	/else \
		/echo No target! %;\
	/endif

/alias ca /cast_word_of_attrition %{*}

;; Shattered Feast
/def cast_shattered_feast =\
	/if ({prayer_done})\
		/send @cast shattered feast at amount 100 %;\
	/else \
		/set cast_feast=1 %;\
		/use_prayer_to_destruction spell %;\
	/endif
	
/alias csf /cast_shattered_feast

/def -p10000 -F -msimple -t'You start chanting.' =\
	/set prayer_done=0

/def -p10000 -F -mregexp -t'That I have set free, return to me' start_meditation =\
	/set cast_feast=0

;; Blood Seeker
/def cast_blood_seeker =\
	/send @cast blood seeker at amount 100 %;\

/alias cbs /cast_blood_seeker

;; Reaping of bile
/def cast_reaping_of_bile =\
	/send @cast reaping of bile %;\

/alias crb /cast_reaping_of_bile

;; Call armour
/def cast_call_armour =\
	/send @cast call armour at amount %{*} %;\

/alias cca /cast_call_armour %{*}

;; Hilites
/def -p10 -F -P1BCwhite -mregexp -t"You speak the ancient (.+) '(.+)'"
/def -p10 -F -P2BCwhite -mregexp -t"You speak the ancient (.+) '(.+)'"

/def -p10 -F -P1Ccyan -mregexp -t"You feel you have released (.+) amount of destructive energy."
/def -p10 -F -P1Ccyan -mregexp -t"You feel you have released (.+) amounts of destructive energy."
                                  
/def -p10 -F -P1BCred -mregexp -t"You score a (KILLING BLOW) on (.+)!"

/def -p10 -F -aBCred -mregexp -t"Your frenzied attempts to destroy (.+) are easily deflected."

/def -p10 -F -aCblue -mregexp -t"You attack and swing again"
/def -p10 -F -aCblue -mregexp -t"You attack and swing a THIRD time"

/def -p10 -F -aBCred -mregexp -t"(.+) shifts position and you cannot hit the (.+) time."



