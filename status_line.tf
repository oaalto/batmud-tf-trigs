/load batmud-tf-trigs/color_helpers.tf

/set status_height=2

/set isize=1
/set default_status_attr=BCblue
/eval /set status_attr=%{default_status_attr}
/set status_pad= 
/set visual_mode=0

/def set_status_line = \
	/set hp_var=$[decode_attr({1}, colorer({1}, {2}))]/%{2} %;\
        /set sp_var=$[decode_attr({3}, colorer({3}, {4}))]/%{4} %;\
        /set ep_var=$[decode_attr({5}, colorer({5}, {6}))]/%{6} %;\
        /set exp_var=%{7} %;\
	/if (strlen({8}) > 0)\
		/set money_var=%{8} %;\
	/endif %;\
	/prompt >

/def -p1000 -F -ag -mregexp -t'^H:(-?[0-9]+)/(-?[0-9]+) \[[+-]?[0-9]*\] S:(-?[0-9]+)/(-?[0-9]+) \[[+-]?[0-9]*\] E:(-?[0-9]+)/(-?[0-9]+) \[[+-]?[0-9]*\] \$:(-?[0-9]+) \[[+-]?[0-9]*\] exp:(-?[0-9]+) \[[+-]?[0-9]*\]$' = \
	/set_status_line %{P1} %{P2} %{P3} %{P4} %{P5} %{P6} %{P7} %{P8}

/def -i -p9999 -mregexp -h"PROMPT Hp:(.+)/(.+) Sp:(.+)/(.+) Ep:(.+)/(.+) Exp:(.+) >$" = \
	/set_status_line %{P1} %{P2} %{P3} %{P4} %{P5} %{P6} %{P7}

/status_add -c 'Hp: ' hp_var:9:Cwhite ' Sp: ' sp_var:9:Cwhite ' Ep: ' ep_var:9:Cwhite ' $: ' money_var:10:Cyellow ' Exp: ' exp_var::Cwhite

