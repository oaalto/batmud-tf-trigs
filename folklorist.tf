;; Study creature
/def use_study_creature = \
	/send @use study creature at %{*}

/alias usc /use_study_creature %{*}

;; Eye of loraen
/def use_eye_of_loraen = \
	/send @use eye of loraen at %{*}

/alias uel /use_eye_of_loraen %{*}

;; Plant lore
/def use_plant_lore = \
	/send @use plant lore at %{*}

/alias upl /use_plant_lore %{*}

;; Poison blast
/def cast_poison_blast = \
	/if (strlen({*}) > 0) \
		/send @target %{*};cast poison blast at %{*} %;\
	/else \
		/send cast 'poison blast' %;\
	/endif

/alias cpb /cast_poison_blast %{*}

;; Venom strike
/def cast_venom_strike = \
	/if (strlen({*}) > 0) \
		/send @target %{*};cast venom strike at %{*} %;\
	/else \
		/send @cast 'venom strike' %;\
	/endif

/alias cvs /cast_venom_strike %{*}

;; Herbal healing
/def cast_herbal_healing = \
	/if (strlen({*}) > 0) \
		/send @cast 'herbal healing' %{*} use herb %;\
	/else \
		/send @cast 'herbal healing' me use herb %;\
	/endif

/alias chh /cast_herbal_healing %{*}

;; Minor protection
/def cast_minor_protection = \
	/if (strlen({*})) \
		/send @cast 'minor protection' %{*} %;\
	/else \
		/send @cast 'minor protection' me %;\
	/endif

/alias cmp /cast_minor_protection

