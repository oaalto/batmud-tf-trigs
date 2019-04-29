;; TRIGS

/def -p10 -F -aCcyan -mregexp -t"looks a lot less in pain as colonies start to disappear.."
/def -p10 -F -P1Ccyan -mregexp -t"You feel you harvest (.+) amount of vitae.."
/def -p10 -F -P1Ccyan -mregexp -t"You feel you harvest (.+) amount of potentia.."
/def -p10 -F -aCcyan -mregexp -t"You feel your insight of evolution expanding.."
/def -p10 -F -aCgreen -mregexp -t"You hear deep inside your head the parasite whispers more secrets of"
/def -p10 -F -aCgreen -mregexp -t"You hear deep inside your head the parasite whispering to you secrets of"
/def -p10 -F -aCblue -mregexp -t"looks relieved as the aether line fades away!"

/def -p10000 -F -mregexp -t'DEAD, R.I.P.' mob_dead_nergal =\
        /send @nergal sc

;; Status line
/def -p1000 -F -ag -mregexp -t'^::\.\.:\. (.+) \[Hp: ([0-9]+) \(([0-9]+)\)[ \-+\(\)0-9]*, Sp: ([0-9]+) \(([0-9]+)\)[ \-+\(\)0-9]*, Ep: ([0-9]+) \(([0-9]+)\)[ \-+\(\)0-9]*\]$' = \
	$[save_minion_stats({P1}, {P2}, {P4})] %;\
	/update_status_line_2

/def update_status_line_2 = \
	/if (strlen({minion_3_name}) > 0) \
		/set status_line_2=%{minion_1_name}: Hp: %{minion_1_hp} Sp: %{minion_1_sp} %{minion_2_name}: Hp: %{minion_2_hp} Sp: %{minion_2_sp} %{minion_3_name}: Hp: %{minion_3_hp} Sp: %{minion_3_sp} %;\
	/elseif (strlen({minion_2_name}) > 0) \
		/set status_line_2=%{minion_1_name}: Hp: %{minion_1_hp} Sp: %{minion_1_sp} %{minion_2_name}: Hp: %{minion_2_hp} Sp: %{minion_2_sp} %;\
	/elseif (strlen({minion_1_name}) > 0) \
		/set status_line_2=%{minion_1_name}: Hp: %{minion_1_hp} Sp: %{minion_1_sp} %;\
	/else \
		/set status_line_2= %;\
	/endif

/def save_minion_stats = \
	/if (strlen({minion_1_name}) == 0 | {1} == {minion_1_name}) \
		$[save_minion_1_stats({1}, {2}, {3})] %;\
	/elseif (strlen({minion_2_name}) == 0 | {1} == {minion_2_name}) \
                $[save_minion_2_stats({1}, {2}, {3})] %;\
	/elseif (strlen({minion_3_name}) == 0 | {1} == {minion_3_name}) \
                $[save_minion_3_stats({1}, {2}, {3})] %;\
	/endif

/def save_minion_1_stats = \
	/set minion_1_name=%{1} %;\
        /set minion_1_hp=%{2} %;\
        /set minion_1_sp=%{3} %;\

/def save_minion_2_stats = \
        /set minion_2_name=%{1} %;\
        /set minion_2_hp=%{2} %;\
        /set minion_2_sp=%{3} %;\

/def save_minion_3_stats = \
        /set minion_3_name=%{1} %;\
        /set minion_3_hp=%{2} %;\
        /set minion_3_sp=%{3} %;\

;; SPELLS

;; Enthralling parasite
/def cast_enthralling_parasite =\
	/send @cast 'enthralling parasite' %{*}

/alias cep /cast_enthralling_parasite %{*}

;; Harvest vitae
/def cast_harvest_vitae =\
	/send @target %{*};cast 'harvest vitae' %{*}

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
	/send @target %{*};cast 'reap potentia' %{*}

/alias crp /cast_reap_potentia %{*}

;; Parasitic Swarm
/def cast_parasitic_swarm =\
	/send @target %{*};cast 'parasitic swarm' %{*}

/alias cps /cast_parasitic_swarm %{*}

;; End enthrallment
/def cast_end_enthrallment =\
	/if (strlen({1}) > 0)\
		/send @cast end enthrallment at %{*} %;\
	/endif

/alias cee /cast_end_enthrallment %{*}

;; Nourish Enthralled
/def cast_nourish_enthralled =\
	/if (strlen({1}) > 0 & strlen({2}) > 0 & strlen({3}) > 0)\
		/send @cast nourish enthralled at %{1} consume %{2} %{3} %;\
	/endif

/alias cne /cast_nourish_enthralled %{*}

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
	
/alias udh /use_dreary_hibernation

