/def colorhelper = \
        /if ({1} > 90) /return "xBCgreen" %;\
	/elseif ({1} > 80) /return "xCgreen" %;\
        /elseif ({1} > 65) /return "xBCcyan" %;\
        /elseif ({1} > 50) /return "xCcyan" %;\
	/elseif ({1} > 35) /return "xBCyellow" %;\
        /elseif ({1} > 20) /return "xCyellow" %;\
	/elseif ({1} > 10) /return "xBCred" %;\
        /else /return "xCred" %;\
        /endif

/def colorer = \
	/if ({2} != 0) \
	        /let ratio=$[{1} * 100 / {2}] %;\
        	/return colorhelper(ratio) %;\
	/endif

/def set_white = /return decode_attr({1}, 'xBCwhite')

/def color_str = /return decode_attr({1}, colorer({1}, {2}))

