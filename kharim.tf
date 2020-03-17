/def -p10 -F -aBCgreen -msimple -t"Chaotic force closes the bleeding wound in your body."
/def -p10 -F -aBCyellow -msimple -t"Your blood circulation normalizes."

;; Foul Play
/def use_foul_play = \
	/if (strlen({1}) > 0) \
		/send @kharim observe;target %{*} %;\
	/endif %;\
	/send @use 'foul play' %{*}

/alias ufp /use_foul_play %{*}

;; Deceitful act of mercy
/def use_act_of_mercy = \
	/if (strlen({1}) > 0) \
		/send @target %{*} %;\
	/endif %;\
	/send @use 'deceitful act of mercy' %{*}

/alias uam /use_act_of_mercy %{*}

;; Feigned remorse
/def use_feigned_remorse = \
	/if (strlen({1}) > 0) \
		/send @target %{*} %;\
	/endif %;\
	/send @use 'feigned remorse' %{*}

/alias ufr /use_feigned_remorse

;; Scourge of dark steel
/def use_scourge = \
	/if (strlen({1}) > 0) \
		/send @kharim observe;target %{*} %;\
	/endif %;\
	/send @use 'scourge of dark steel' %{*}

/alias usd /use_scourge %{*}

;; Vampiric blow
/def use_vampiric_blow = \
	/if (strlen({1}) > 0) \
		/send @target %{*} %;\
	/endif %;\
	/send @use 'vampiric blow' %{*}

/alias uvb /use_vampiric_blow %{*}

;; Chaotic circulation
/def use_chaotic_circulation = \
	/send @use Chaotic circulation at me %;\

/alias ucc /use_chaotic_circulation

;; Rip action
/def kharim_rip_action = /send @rip_action set get all from corpse;kharim drain corpse;drop zinc;drop mowgles

/alias kharim_rip /kharim_rip_action

