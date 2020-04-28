/def -p10 -F -aBCgreen -msimple -t"Chaotic force closes the bleeding wound in your body."
/def -p10 -F -aBCyellow -msimple -t"Your blood circulation normalizes."
/def -p10 -F -aBCyellow -msimple -t"Your thirst for blood is growing insatiable."

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

/def tositwar = /send 6 w;4 sw;4 w;nw
/def fromsitwar = /send se;4 e;4 ne;6 e

/def tomelee = /send 6 w;4 sw;20 w;6 w;nw
/def frommelee = /send se;6 e;20 e;4 ne;6 e

/def tosw = /send 6 w;4 sw;20 w;ne;2 n;nw
/def fromsw = /send se;2 s;sw;20 e;4 ne;6 e

/def tose = /send 6 w;4 sw;9 w;2 nw;ne;n
/def fromse = /send s;sw;2 se;9 e;4 ne;6 e

/def tonw = /send 6 w;4 sw;20 w;8 w;3 nw;3 ne;2 n;2 nw;3 n;3 nw;3 w;nw;n;3 ne;6 e
/def fromnw = /send 6 w;3 sw;s;se;3 e;3 se;3 s;2 se;2 s;3 sw;3 se;8 e;20 e;4 ne;6 e

/def tone = /send 6 w;3 nw;7 w;2 n;nw;2 ne;4 n;nw;3 n;e;ne;6 e
/def fromne = /send 6 w;sw;w;3 s;se;4 s;2 sw;se;2 s;7 e;3 se;6 e

/def tokitan = /send 6 w;4 sw;20 w;8 w;3 nw;3 ne;2 n;2 nw;3 n;3 nw;3 w;nw;3 n;nw;enter
/def fromkitan = /send out;se;3 s;se;3 e;3 se;3 s;2 se;2 s;3 sw;3 se;8 e;20 e;4 ne;6 e

/def tosouls = /send 6 w;3 nw;7 w;2 n;nw;2 ne;4 n;nw;3 n;2 w;nw;enter;ask man about services
/def fromsouls = /send out;se;2 e;3 s;se;4 s;2 sw;se;2 s;7 e;3 se;6 e

/def tocloud = /send 6 w;4 sw;20 w;11 w;4 nw;3 w;cloud
/def fromcloud = /send descend;3 e;4 se;11 e;20 e;4 ne;6 e

/def toswords = /send 4 w;6 nw;5 n;2 e;2 ne;e;2 ne;n;ne;2 e;enter
/def fromswords = /send out;2 w;sw;s;2 sw;w;2 sw;2 w;5 s;6 se;4 e

/def todevice = /send w;out;3 w;nw;ne;2 nw;4 w;S;E;se;e
/def fromdevice = /send w;nw;7 w;7 n;E;s;se;sw;se;E;e;enter

