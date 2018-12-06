;; SPELLS

;; Enthralling parasite
/def cast_enthralling_parasite =\
	/if (strlen({1}) > 0)\
		/send @cast Enthralling parasite at %{*} %;\
	/else \
		/send @cast Enthralling parasite %;\
	/endif

/alias cep /cast_enthralling_parasite %{*}

;; Harvest vitae
/def cast_harvest_vitae =\
	/if (strlen({1}) > 0)\
		/send @target %{*};cast Harvest vitae at %{*} %;\
	/else \
		/send @cast Harvest vitae %;\
	/endif

/alias chv /cast_harvest_vitae %{*}

;; Corrupt ground
/def cast_corrupt_ground =\
	/send @cast corrupt ground %;\

/alias ccg /cast_corrupt_ground

;; Evaluate host
/def cast_evaluate_host =\
	/if (strlen({1}) > 0)\
		/send @cast evaluate host at %{*} %;\
	/endif

/alias ceh /cast_evaluate_host %{*}

;; Reap potentia
/def cast_reap_potentia =\
	/if (strlen({1}) > 0)\
		/send @target %{*};cast reap potentia at %{*} %;\
	/else \
		/send @cast reap potentia %;\
	/endif

/alias crp /cast_reap_potentia %{*}

;; Parasitic Swarm
/def cast_parasitic_swarm =\
	/if (strlen({1}) > 0)\
		/send @target %{*};cast parasitic swarm at %{*} %;\
	/else \
		/send @cast parasitic swarm %;\
	/endif

/alias cps /cast_parasitic_swarm %{*}

;; End enthrallment
/def cast_end_enthrallment =\
	/if (strlen({1}) > 0)\
		/send @cast end enthrallment at %{*} %;\
	/endif

/alias cee /cast_end_enthrallment %{*}


;; SKILLS

;; Embrace the Gifts
/def use_embrace_the_gifts_aura =\
	/if (strlen({1}) > 0)\
		/send @use embrace the gifts at start aura %{*} %;\
	/endif

/alias aura /use_embrace_the_gifts_aura %{*}

;; Dreary hibernation
/def use_dreary_hibernation =\
	/send @use dreary hibernation %;\
	
/alias udh /use_dreary_hibernation %{*}

