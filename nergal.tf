;; TRIGS

/def -p10 -F -aCcyan -mregexp -t"looks a lot less in pain as colonies start to disappear.."
/def -p10 -F -P1Ccyan -mregexp -t"You feel you harvest (.+) amount of vitae.."
/def -p10 -F -P1Ccyan -mregexp -t"You feel you harvest (.+) amount of potentia.."
/def -p10 -F -aCcyan -mregexp -t"You feel your insight of evolution expanding.."
/def -p10 -F -aCgreen -mregexp -t"You hear deep inside your head the parasite whispers more secrets of"
/def -p10 -F -aCgreen -mregexp -t"You hear deep inside your head the parasite whispering to you secrets of"
/def -p10 -F -aCblue -mregexp -t"looks relieved as the aether line fades away!"

/def -p10 -F -aCred -msimple -t"Your body can't handle any more of vitae!"
/def -p10 -F -aCred -msimple -t"Your body can't handle any more of potentia!"

/def -p10000 -F -mregexp -t"DEAD, R.I.P." mob_dead_nergal = \
        /send @nergal sc

/def -p1000 -F -mregexp -t"Potentia: 1000/1000" = \
	/echo -aCred ***** POTENTIA IS FULL! *****
/def -p1000 -F -mregexp -t"Vitae: 1000/1000" = \
	/echo -aCred ***** VITAE IS FULL! *****

;; Status line
/def -p1000 -F -ag -mregexp -t'^::\.\.:\. (.+) \[Hp: ([\-0-9]+) \(([0-9]+)\)[ \-+\(\)0-9]*, Sp: ([\-0-9]+) \(([0-9]+)\)[ \-+\(\)0-9]*, Ep: ([\-0-9]+) \(([0-9]+)\)[ \-+\(\)0-9]*\]$' = \
	/test $[save_minion_stats({P1}, {P2}, {P3}, {P4}, {P5}, {P6}, {P7})] %;\
	/update_status_line_2

/def update_status_line_2 = \
	/if (strlen({minion_3_name}) > 0) \
		/set status_line_2=%{minion_1_name}: Hp: %{minion_1_hp}(%{minion_1_max_hp}) Sp: %{minion_1_sp}(%{minion_1_max_sp}) Ep: %{minion_1_ep}(%{minion_1_max_ep}) %{minion_2_name}: Hp: %{minion_2_hp}(%{minion_2_max_hp}) Sp: %{minion_2_sp}(%{minion_2_max_sp}) Ep: %{minion_2_ep}(%{minion_2_max_ep}) %{minion_3_name}: Hp: %{minion_3_hp}(%{minion_3_max_hp}) Sp: %{minion_3_sp}(%{minion_3_max_sp}) Ep: %{minion_3_ep}(%{minion_3_max_ep}) %;\
	/elseif (strlen({minion_2_name}) > 0) \
		/set status_line_2=%{minion_1_name}: Hp: %{minion_1_hp}(%{minion_1_max_hp}) Sp: %{minion_1_sp}(%{minion_1_max_sp}) Ep: %{minion_1_ep}(%{minion_1_max_ep}) %{minion_2_name}: Hp: %{minion_2_hp}(%{minion_2_max_hp}) Sp: %{minion_2_sp}(%{minion_2_max_sp}) Ep: %{minion_2_ep}(%{minion_2_max_ep}) %;\
	/elseif (strlen({minion_1_name}) > 0) \
		/set status_line_2=%{minion_1_name}: Hp: %{minion_1_hp}(%{minion_1_max_hp}) Sp: %{minion_1_sp}(%{minion_1_max_sp}) Ep: %{minion_1_ep}(%{minion_1_max_ep}) %;\
	/else \
		/set status_line_2= %;\
	/endif

/def save_minion_stats = \
	/if (strlen({minion_1_name}) == 0 | {1} =~ {minion_1_name}) \
		$[save_minion_1_stats({1}, {2}, {3}, {4}, {5}, {6}, {7})] %;\
	/elseif (strlen({minion_2_name}) == 0 | {1} =~ {minion_2_name}) \
		$[save_minion_2_stats({1}, {2}, {3}, {4}, {5}, {6}, {7})] %;\
	/elseif (strlen({minion_3_name}) == 0 | {1} =~ {minion_3_name}) \
		$[save_minion_3_stats({1}, {2}, {3}, {4}, {5}, {6}, {7})] %;\
	/endif

/def save_minion_1_stats = \
	/set minion_1_name=$[set_white({1})] %;\
	/set minion_1_hp=%{2} %;\
	/set minion_1_max_hp=$[set_white({3})] %;\
  /set minion_1_sp=%{4} %;\
	/set minion_1_max_sp=$[set_white({5})] %;\
	/set minion_1_ep=%{6} %;\
	/set minion_1_max_ep=$[set_white({7})]

/def save_minion_2_stats = \
  /set minion_2_name=$[set_white({1})] %;\
  /set minion_2_hp=%{2} %;\
	/set minion_2_max_hp=$[set_white({3})] %;\
  /set minion_2_sp=%{4} %;\
  /set minion_2_max_sp=$[set_white({5})] %;\
  /set minion_2_ep=%{6} %;\
  /set minion_2_max_ep=$[set_white({7})]

/def save_minion_3_stats = \
  /set minion_3_name=$[set_white({1})] %;\
  /set minion_3_hp=%{2} %;\
	/set minion_3_max_hp=$[set_white({3})] %;\
  /set minion_3_sp=%{4} %;\
  /set minion_3_max_sp=$[set_white({5})] %;\
  /set minion_3_ep=%{6} %;\
  /set minion_3_max_ep=$[set_white({7})]

;; Remove from status line when unsummoning
/def -p1000 -F -mregexp -t'^Your connection to your parasite is severed completely. (.+) jerks violently couple of times and collapses.$' = \
	/set minion_3_name= %;\
	/set minion_2_name= %;\
	/set minion_1_name= %;\
	/set status_line_2=

/def -p1000 -F -mregexp -t'You end the connection to your parasite, making the host jerk couple of times violently. After couple of seconds (.+) collapses and stops moving at all.' = \
	/set minion_3_name= %;\
  /set minion_2_name= %;\
  /set minion_1_name= %;\
	/set status_line_2=

;; SPELLS

;; Enthralling parasite
/def cast_enthralling_parasite = \
	/send @cast 'enthralling parasite' %{*}

/alias cep /cast_enthralling_parasite %{*}

;; Harvest vitae
/def cast_harvest_vitae = \
	/send @target %{*};cast 'harvest vitae' %{*}

/alias chv /cast_harvest_vitae %{*}

;; Corrupt ground
/def cast_corrupt_ground = \
	/send @cast corrupt ground %;\

/alias ccg /cast_corrupt_ground

;; Evaluate host
/def cast_evaluate_host = \
	/send @target %{*};cast 'evaluate host' %{*} 

/alias ceh /cast_evaluate_host %{*}

;; Reap potentia
/def cast_reap_potentia = \
	/send @target %{*};cast 'reap potentia' %{*}

/alias crp /cast_reap_potentia %{*}

;; Parasitic Swarm
/def cast_parasitic_swarm = \
	/send @target %{*};cast 'parasitic swarm' %{*}

/alias cps /cast_parasitic_swarm %{*}

;; End enthrallment
/def cast_end_enthrallment = \
	/if (strlen({1}) > 0)\
		/send @cast end enthrallment at %{*} %;\
	/endif

/alias cee /cast_end_enthrallment %{*}

;; Nourish Enthralled
/def cast_nourish_enthralled = \
	/if (strlen({1}) > 0 & strlen({2}) > 0 & strlen({3}) > 0)\
		/send @cast nourish enthralled at %{1} consume %{2} %{3} %;\
	/endif

/alias cne /cast_nourish_enthralled %{*}

;; Call forth enthralled
/def cast_call_forth_enthralled = \
	/send cast call forth enthralled at %{*}

/alias cce /cast_call_forth_enthralled %{*}

;; SKILLS

;; Embrace the Gifts
/def use_embrace_the_gifts_aura = \
	/if (strlen({1}) > 0)\
		/send @use embrace the gifts at start aura %{*} %;\
	/endif

/alias aura /use_embrace_the_gifts_aura %{*}

/def use_embrace_the_gifts_mutation = \
	/if (strlen({1}) > 0) \
		/send @use embrace the gifts at start mutation %{*} %;\
	/endif

/alias mutation /use_embrace_the_gifts_mutation %{*}

;; Dreary hibernation
/def use_dreary_hibernation = \
	/send @use dreary hibernation %;\
	
/alias udh /use_dreary_hibernation

;; Stab
/def use_stab = \
	/if (strlen({1}) > 0) \
		/send @target %{*} %;\
	/endif %;\
  /send @use 'stab' %{*}

/alias us /use_stab %{*}

;; Auras

/def -aCgreen -mregexp -t"(.*) manages to scratch (.*) skin infecting the tissue under the skin with nasty disease"

/def -aCgreen -mregexp -t"(.*) plunges towards (.*) and manages to sink its disease infecting nails into (.*) flesh!"

/def -aCgreen -mregexp -t"You can feel essence flowing into you from (.*) as (.*) sinks its nails into its victim!"

