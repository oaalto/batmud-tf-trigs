/load batmud-tf-trigs/color_helpers.tf

/set status_height=2

/set isize=1
/set default_status_attr=BCblue
/eval /set status_attr=%{default_status_attr}
/set status_pad= 
/set visual_mode=0

/def set_status_line = \
	/let hp=$[color_str({1}, {2})]/$[set_white({2})] [%{hpDiff}] %;\
        /let sp=$[color_str({3}, {4})]/$[set_white({4})] [%{spDiff}] %;\
        /let ep=$[color_str({5}, {6})]/$[set_white({6})] [%{epDiff}] %;\
        /let exp=$[set_white({7})] [%{expDiff}] %;\
	/let m=%{money} [%{moneyDiff}] %;\
	/set status_line_1=Hp: %{hp} Sp: %{sp} Ep: %{ep} \$: %{m} Exp: %{exp} %;\
	/prompt >

/def -p1000 -F -ag -mregexp -t'^H:(.+)/(.+) \[(.*)\] S:(.+)/(.+) \[(.*)\] E:(.+)/(.+) \[(.*)\] \$:(.+) \[(.*)\] exp:(.+) \[(.*)\]$' = \
	/let hpd=%{P3} %;\
	/let spd=%{P6} %;\
	/let epd=%{P9} %;\
	/let moneyd=%{P11} %;\
	/let expd=%{P13} %;\
	/set money=$[set_white({P10})] %;\
	/set_hp_diff %{hpd} %;\
	/set_sp_diff %{spd} %;\
	/set_ep_diff %{epd} %;\
        /set_money_diff %{moneyd} %;\
        /set_exp_diff %{expd} %;\
	/set_status_line %{P1} %{P2} %{P4} %{P5} %{P7} %{P8} %{P12}

/def -i -p9999 -mregexp -h"PROMPT Hp:(.+)/(.+) Sp:(.+)/(.+) Ep:(.+)/(.+) Exp:(.+) >$" = \
	/test $[set_status_line({P1}, {P2}, {P3}, {P4}, {P5}, {P6}, {P7})]

/status_add -c -r0 status_line_1
/status_add -c -r1 status_line_2

/def set_hp_diff = \
	/if (strlen({1}) > 0) \
		/set hpDiff=%{1} %;\
		/repeat -5 1 /eval /set hpDiff=%;\
	/endif

/def set_sp_diff = \
        /if (strlen({1}) > 0) \
                /set spDiff=%{1} %;\
                /repeat -5 1 /eval /set spDiff=%;\
        /endif

/def set_ep_diff = \
        /if (strlen({1}) > 0) \
                /set epDiff=%{1} %;\
                /repeat -5 1 /eval /set epDiff=%;\
        /endif

/def set_money_diff = \
        /if (strlen({1}) > 0) \
                /set moneyDiff=%{1} %;\
                /repeat -5 1 /eval /set moneyDiff=%;\
        /endif

/def set_exp_diff = \
        /if (strlen({1}) > 0) \
                /set expDiff=%{1} %;\
                /repeat -5 1 /eval /set expDiff=%;\
        /endif

