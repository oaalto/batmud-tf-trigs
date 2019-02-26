;; Reaver Threaten
/def reaver_threaten =\
	/send @reaver threaten %{*}

/alias rt /reaver_threaten %{*}

;; SKILLS

;; Scythe Swipe
/def use_scythe_swipe =\
	/if (strlen({1}) > 0)\
		/reaver_threaten %{*} %;\
		/send @target %{*};use scythe swipe at %{*} %;\
	/else \
		/send @use scythe swipe %;\
	/endif

/alias us /use_scythe_swipe %{*}

;; Rampant Cutting
/def use_rampant_cutting =\
	/if (strlen({1}) > 0)\
		/reaver_threaten %{*} %;\
		/send @target %{*};use rampant cutting at %{*} %;\
	/else \
		/send @use rampant cutting %;\
	/endif

/alias ur /use_rampant_cutting %{*}

;; True Reaving
/def use_true_reaving =\
	/if (strlen({1}) > 0)\
		/reaver_threaten %{*} %;\
		/send @target %{*};use true reaving at %{*} %;\
	/else \
		/send @use true reaving %;\
	/endif

/alias utr /use_true_reaving %{*}

;; Prayer to Destruction
/def use_prayer_to_destruction =\
	/if (strlen({1}) > 0)\
		/send @use prayer to destruction at %{*} %;\
	/else \
		/echo No target! %;\
	/endif

/alias upd /use_prayer_to_destruction %{*}

;; SPELLS

;; World of Spite
/def cast_word_of_spite =\
	/if (strlen({1}) > 0)\
		/reaver_threaten %{*} %;\
		/send @target %{*};cast word of spite at %{*} %;\
	/else \
		/send @cast word of spite %;\
	/endif

/alias cs /cast_word_of_spite %{*}

;; World of Blasing
/def cast_word_of_blasting =\
	/if (strlen({1}) > 0)\
		/reaver_threaten %{*} %;\
		/send @target %{*};cast word of blasting at %{*} %;\
	/else \
		/send @cast word of blasting %;\
	/endif

/alias cb /cast_word_of_blasting %{*}

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
	/send @cast shattered feast at amount 100 %;\

/alias csf /cast_shattered_feast

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

/def -p10 -F -P1Ccyan -mregexp -t"You feel you have released a (tiny) amount of destructive energy."
/def -p10 -F -P1BCcyan -mregexp -t"You feel you have released a (small) amount of destructive energy."
/def -p10 -F -P1Cblue -mregexp -t"You feel you have released (moderate) amounts of destructive energy."

/def -p10 -F -P1BCred -mregexp -t"You score a (KILLING BLOW) on (.+)!"

/def -p10 -F -aBCred -mregexp -t"Your frenzied attempts to destroy (.+) are easily deflected."


