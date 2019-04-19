/load batmud-tf-trigs/color_helpers.tf

/set status_height=2

/set isize=1
/set default_status_attr=BCblue
/eval /set status_attr=%{default_status_attr}
/set status_pad= 
/set visual_mode=0

/def set_status_line = \
	/let hp=$[color_str({1}, {2})]/$[set_white({2})] %;\
        /let sp=$[color_str({3}, {4})]/$[set_white({4})] %;\
        /let ep=$[color_str({5}, {6})]/$[set_white({6})] %;\
        /let exp=$[set_white({7})] %;\
	/if (strlen({8}) > 0)\
;; Set because otherwise it will display an empty value 
		/set money=$[set_white({8})] %;\
	/endif %;\
	/set status_line=Hp: %{hp} Sp: %{sp} Ep: %{ep} \$: %{money} Exp: %{exp} %;\
	/prompt >

/def -p1000 -F -ag -mregexp -t'^H:(.+)/(.+) \[[+-]?[0-9]*\] S:(.+)/(.+) \[[+-]?[0-9]*\] E:(.+)/(.+) \[[+-]?[0-9]*\] \$:(.+) \[[+-]?[0-9]*\] exp:(.+) \[[+-]?[0-9]*\]$' = \
	/set_status_line %{P1} %{P2} %{P3} %{P4} %{P5} %{P6} %{P8} %{P7}

/def -i -p9999 -mregexp -h"PROMPT Hp:(.+)/(.+) Sp:(.+)/(.+) Ep:(.+)/(.+) Exp:(.+) >$" = \
	/set_status_line %{P1} %{P2} %{P3} %{P4} %{P5} %{P6} %{P7}

/status_add -c status_line

