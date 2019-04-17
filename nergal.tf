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

