/def colorhelper = \
        /if (regmatch("[0-9]+", {1}) == 0) /return "xC8"%;\
        /elseif ({1} > 80) /return "xhCgreen"%;\
        /elseif ({1} > 60) /return "xCgreen"%;\
        /elseif ({1} > 40) /return "xCyellow"%;\
        /elseif ({1} > 20) /return "xhCred"%;\
        /elseif ({1} > 0) /return "xCred"%;\
        /else /return "xrCred"%;\
        /endif

/def colorer = \
        /let ratio=$[{1} * 100 / {2}] %;\
        /return colorhelper(ratio)

/def set_white = /return decode_attr({1}, 'BCwhite')

/def color_str = /return decode_attr({1}, colorer({1}, {2}))


