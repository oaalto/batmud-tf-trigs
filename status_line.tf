/load batmud-tf-trigs/color_helpers.tf

/set status_height=2

/set isize=1
/set default_status_attr=BCblue
/eval /set status_attr=%{default_status_attr}
/set status_pad= 
/set visual_mode=0

/def set_status_line = \
	/let hp=$[color_str({1}, {2})]/$[set_white({2})] %{hpDiff} %;\
        /let sp=$[color_str({3}, {4})]/$[set_white({4})] %{spDiff} %;\
        /let ep=$[color_str({5}, {6})]/$[set_white({6})] %{epDiff} %;\
        /let exp=$[set_white({7})] %;\
	/set status_line_1=Hp: %{hp} Sp: %{sp} Ep: %{ep} \$: %{money} %{moneyDiff} Exp: %{exp} %{expDiff} %;\
	/prompt >

/def -p1000 -F -ag -mregexp -t'^H:(.+)/(.+) (\[.*\]) S:(.+)/(.+) (\[.*\]) E:(.+)/(.+) (\[.*\]) \$:(.+) (\[.*\]) exp:(.+) (\[.*\])$' = \
	/set hpDiff=%{P3} %;\
	/set spDiff=%{P6} %;\
	/set epDiff=%{P9} %;\
	/set money=$[set_white({P10})] %;\
        /set moneyDiff=%{P11} %;\
        /set expDiff=%{P13} %;\
	/set_status_line %{P1} %{P2} %{P4} %{P5} %{P7} %{P8} %{P12}

/def -i -p9999 -mregexp -h"PROMPT Hp:(.+)/(.+) Sp:(.+)/(.+) Ep:(.+)/(.+) Exp:(.+) >$" = \
	/test $[set_status_line({P1}, {P2}, {P3}, {P4}, {P5}, {P6}, {P7})]

/status_add -c -r0 status_line_1
/status_add -c -r1 status_line_2

