;; SKILLS

;; Scythe Swipe
/def use_scythe_swipe =\
	/if (strlen({1}) > 0)\
		/send @target %{*};use scythe swipe at %{*} %;\
	/else \
		/send @use scythe swipe %;\
	/endif

/alias us /use_scythe_swipe %{*}

;; Rampant Cutting
/def use_rampant_cutting =\
	/if (strlen({1}) > 0)\
		/send @target %{*};use rampant cutting at %{*} %;\
	/else \
		/send @use rampant cutting %;\
	/endif

/alias ur /use_rampant_cutting %{*}

;; True Reaving
/def use_true_reaving =\
	/if (strlen({1}) > 0)\
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
		/send @target %{*};cast word of spite at %{*} %;\
	/else \
		/send @cast word of spite %;\
	/endif

/alias cs /cast_word_of_spite %{*}

;; World of Blasing
/def cast_word_of_blasting =\
	/if (strlen({1}) > 0)\
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
	/if (strlen({1}) > 0)\
		/send @cast shattered feast at amount %{1} %;\
	/else \
		/echo No target! %;\
	/endif

/alias csf /cast_shattered_feast %{*}


