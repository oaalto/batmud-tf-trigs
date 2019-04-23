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
	/set status_line_1=Hp: %{hp} Sp: %{sp} Ep: %{ep} \$: %{money} %{moneyDiff} Exp: %{exp} %{expDiff} %;\
	/prompt >

/def -p1000 -F -ag -mregexp -t'^H:(.+)/(.+) \[[+-]?[0-9]*\] S:(.+)/(.+) \[[+-]?[0-9]*\] E:(.+)/(.+) \[[+-]?[0-9]*\] \$:(.+) \[(.*)\] exp:(.+) \[(.*)\]$' = \
	/if (strlen({P7}) > 0)\
;; Set because otherwise it will display an empty value
                /set money=$[set_white({P7})] %;\
        /endif %;\
	/if (strlen({P8}) > 0) \
                /set moneyDiff=(%{P8}) %;\
                /repeat -5 1 /eval /set moneyDiff=%;\
        /endif %;\
        /if (strlen({P10}) > 0) \
                /set expDiff=(%{P10}) %;\
                /repeat -5 1 /eval /set expDiff=%;\
        /endif %;\
	/set_status_line %{P1} %{P2} %{P3} %{P4} %{P5} %{P6} %{P9}

/def -i -p9999 -mregexp -h"PROMPT Hp:(.+)/(.+) Sp:(.+)/(.+) Ep:(.+)/(.+) Exp:(.+) >$" = \
	/set_status_line %{P1} %{P2} %{P3} %{P4} %{P5} %{P6} %{P7}

/status_add -c -r0 status_line_1
/status_add -c -r1 status_line_2

