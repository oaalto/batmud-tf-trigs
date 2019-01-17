;; Foul Play
/def use_foul_play =\
	/if (strlen({1}) > 0)\
		/send @target %{*};use foul play at %{*} %;\
	/else \
		/send @use 'foul play' %;\
	/endif

/alias ufp /use_foul_play %{*}

;; Deceitful act of mercy
/def use_act_of_mercy =\
	/if (strlen({1}) > 0)\
		/send @target %{*};use Deceitful act of mercy at %{*} %;\
	/else \
		/send @use 'Deceitful act of mercy' %;\
	/endif

/alias uam /use_act_of_mercy %{*}

;; Scourge of dark steel
/def use_scourge =\
	/if (strlen({1}) > 0)\
		/send @target %{*};use Scourge of dark steel at %{*} %;\
	/else \
		/send @use 'Scourge of dark steel' %;\
	/endif

/alias usd /use_scourge %{*}

;; Vampiric blow
/def use_vampiric_blow =\
	/if (strlen({1}) > 0)\
		/send @target %{*};use Vampiric blow at %{*} %;\
	/else \
		/send @use 'Vampiric blow' %;\
	/endif

/alias uvb /use_vampiric_blow %{*}

;; Chaotic circulation
/def use_chaotic_circulation =\
	/send @use Chaotic circulation %;\

/alias ucc /use_chaotic_circulation %{*}


