/load batmud-tf-trigs/color_helpers.tf

/set status_height=2

/set isize=1
/set default_status_attr=BCblue
/eval /set status_attr=%{default_status_attr}
/set status_pad= 
/set visual_mode=0

/def -p1000 -F -ag -mregexp -t'^H:(-?[0-9]+)/(-?[0-9]+) \[[+-]?[0-9]*\] S:(-?[0-9]+)/(-?[0-9]+) \[[+-]?[0-9]*\] E:(-?[0-9]+)/(-?[0-9]+) \[[+-]?[0-9]*\] \$:(-?[0-9]+) \[[+-]?[0-9]*\] exp:(-?[0-9]+) \[[+-]?[0-9]*\]$' = \
	/set hp_var=%{P1}/%{P2} %;\
	/set sp_var=%{P3}/%{P4} %;\
	/set ep_var=%{P5}/%{P6} %;\
	/set money_var=%{P7} %;\
	/set exp_var=%{P8}

/set hp_var=?/?
/set sp_var=?/?
/set ep_var=?/?
/set money_var=?
/set exp_var=?

/status_add -c 'Hp: ' hp_var:9:Cwhite ' Sp: ' sp_var:9:Cwhite ' Ep: ' ep_var:9:Cwhite ' $: ' money_var:10:Cyellow ' Exp: ' exp_var::Cwhite

