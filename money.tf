/def -mregexp -t"It contains (.+) anipium, (.+) batium, (.+) mithril and (.+) platinum coins." = \
    /let plat=$[{P4} * 10] %;\
    /let anip=$[{P1} * 50] %;\
    /let bat=$[{P2} * 100] %;\
    /let mith=$[{P3} * 500] %;\
    /echo Platinum %{P4} = %{plat} %;\
    /echo Anipium %{P1} = %{anip} %;\
    /echo Batium %{P2} = %{bat} %;\
    /echo Mithril %{P3} = %{mith} %;\
    /echo Total = $[{plat} + {anip} + {bat} + {mith}]

/def -msimple -t"There is not that much platinum in the purse." = \
    /send @get 50 anipium from purse

/def -msimple -t"There is not that much anipium in the purse." = \
    /send @get 25 batium from purse

/def -msimple -t"There is not that much batium in the purse." = \
    /send @get 5 mithril from purse

