;; Trigs for new monk skills, enables easy use of combos
;; Could be done with less def's but hey... quick and dirty rules :P
;; Usage 'dm' to do next monkskill in combo or
;; 'dm <target>' to do next monk skill in combo at a target
;; To set a combo use one skill in the combo first


/alias dm /do_monk_skill %{*}  %;

/def do_monk_skill=\
/if (strlen({1}) > 0)\
/send @target %{1};@use %{currentmonkskill} at %{1} %;\
/else \
/send @use %{currentmonkskill} %;\
/endif %;

/def ms=\
	/if ({1} == 1)\
		/set currentmonkskill=%{avoidskill1}%;\
	/endif %;\
	/if ({1} == 2)\
		/set currentmonkskill=%{disruptskill1}%;\
	/endif %;\
	/if ({1} == 3)\
		/set currentmonkskill=%{armourskill1}%;\
	/endif %;\
	/if ({1} == 4)\
		/set currentmonkskill=%{areaskill1}%;\
	/endif %;\
	/send @say Using %{currentmonkskill};

/set armourskill1=falling boulder strike
/set armourskill2=earthquake kick
/set armourskill3=avalanche slam
/set disruptskill1=wave crest strike
/set disruptskill2=geyser force kick
/set disruptskill3=tsunami push
/set areaskill1=hydra fang strike
/set areaskill2=winged horse kick
/set areaskill3=dragon tail sweep
/set avoidskill1=falcon talon strike
/set avoidskill2=elder cobra kick
/set avoidskill3=lions teeth throw

;;Wave Crest Strike is default skill
/set currentmonkskill=wave crest strike

;; You will need 'battle rounds' for these two trigs to work
;/def -p10000 -F -mregexp -t'^[\*]+ Round .* [\*]+$' battle_round1 =\
;	/send @scan all

/def -p10000 -F -mregexp -t'DEAD, R.I.P.' mob_dead =\
        /send @scan

/def monkskillinterrupt=\
	/if ( ({currentmonkskill} =~ {armourskill2}) | ({currentmonkskill} =~ {armourskill3}) ) \
		/set currentmonkskill=%{armourskill1} %;\
	/endif %;\
	/if ( ({currentmonkskill} =~ {disruptskill2}) | ({currentmonkskill} =~ {disruptskill3}) ) \
		/set currentmonkskill=%{disruptskill1} %;\
	/endif %;\
	/if ( ({currentmonkskill} =~ {areaskill2}) | ({currentmonkskill} =~ {areaskill3}) ) \
		/set currentmonkskill=%{areaskill1} %;\
	/endif %;\
	/if ( ({currentmonkskill} =~ {avoidskill2}) | ({currentmonkskill} =~ {avoidskill3}) ) \
		/set currentmonkskill=%{avoidskill1} %;\
	/endif %;

/def -p10000 -F -mregexp -t'^You are not in combat right now.$' notincombat =\
	/monkskillinterrupt

/def -p10000 -F -mregexp -t'^Your movement prevents you from doing the skill\.$' monkskillinterrupt1=\
	/monkskillinterrupt

/def -p10000 -F -mregexp -t'^GgrTF:  ---- SKILL STOPPED ---- $' monkskillinterrupt2=\
	/monkskillinterrupt

;;ARMOUR SKILLS
/def -p1 -F -aCgreen -mregexp -t'^The (blow|thrashing) knocks some of (its|her|his) defenses loose,\
leaving (it|him|her) temporarily vulnerable!$' armourloose1
/def -p1 -F -aCgreen -mregexp -t'^As (she|he|it) lands, some of (his|her|its) protection shifts out of\
place, leaving (him|her|it) temporarily vulnerable!$' armourloose2


/def -p1 -F -mregexp -t'but only score a glancing blow.$' missedarmour1=\
/set currentmonkskill=%{armourskill1} %;

/def -p1 -F -mregexp -t'but only bruise the muscle.$' hit1armour1=\
/set currentmonkskill=%{armourskill2} %;

/def -p1 -F -mregexp -t'scoring a solid hit!$' hit2armour1=\
/set currentmonkskill=%{armourskill2} %;

/def -p1 -F -mregexp -t'and you feel something pop!$' hit3armour1=\
/set currentmonkskill=%{armourskill2} %;

/def -p1 -F -mregexp -t'and you feel something snap!$' hit4armour1=\
/set currentmonkskill=%{armourskill2} %;

/def -p1 -F -mregexp -t'and you feel something shatter!$' hit5armour1=\
/set currentmonkskill=%{armourskill2} %;

/def -p1 -F -mregexp -t'but don\'t get any solid hits.$' missedarmour2=\
/set currentmonkskill=%{armourskill1} %;

/def -p1 -F -mregexp -t'preventing you from hitting with the others.$' hit1armour2=\
/set currentmonkskill=%{armourskill3} %;

/def -p1 -F -mregexp -t'getting two hits in!$' hit2armour2=\
/set currentmonkskill=%{armourskill3} %;

/def -p1 -F -mregexp -t'shaking (his|her|its) whole body!$' hit3armour2=\
/set currentmonkskill=%{armourskill3} %;

/def -p1 -F -mregexp -t'outstretched limbs, but miss.$' missedarmour3=\
/set currentmonkskill=%{armourskill1} %;

/def -p1 -F -mregexp -t'(manage|manages|managed) to land on (his|her|its) butt.$' hit1armour3=\
/set currentmonkskill=%{armourskill1} %;

/def -p1 -F -mregexp -t'but (he|she|it) twists to (landon|land on) (his|her|its) side.$' hit2armour3=\
/set currentmonkskill=%{armourskill1} %;

/def -p1 -F -mregexp -t'and throw (him|it|her) down onto (his|her|its) back!$' hit3armour3=\
/set currentmonkskill=%{armourskill1} %;

;;DISRUPT SKILLS

/def -p1 -F -aCgreen -mregexp -t'shakes (his|her|its) head back and forth, clearly disoriented.$' confusion1
/def -p1 -F -aCgreen -mregexp -t'blinks distractedly, looking somewhat blind!$' confusion2
/def -p1 -F -aCgreen -mregexp -t'hacks and wheezes, looking disoriented.$' confusion3
/def -p1 -F -aCgreen -mregexp -t'takes a moment too long to regain (his|her|its) footing.$' confusion4

/def -p1 -F -mregexp -t'but can\'t make flesh contact.$' misseddisrupt1=\
/set currentmonkskill=%{disruptskill1} %;

/def -p1 -F -mregexp -t'but can\'t make flesh contact.$' misseddisrupt1=\
/set currentmonkskill=%{disruptskill1} %;

/def -p1 -F -mregexp -t'on the side of the head.$' hit1disrupt1=\
/set currentmonkskill=%{disruptskill2} %;

/def -p1 -F -mregexp -t'a harsh slap across the jaw.$' hit2disrupt1=\
/set currentmonkskill=%{disruptskill2} %;

/def -p1 -F -mregexp -t'but miss the veins you were aiming for.$' hit3disrupt1=\
/set currentmonkskill=%{disruptskill2} %;

/def -p1 -F -mregexp -t'hitting one of the arteries and disrupting (his|her|its) blood flow!$' hit4disrupt1=\
/set currentmonkskill=%{disruptskill2} %;

/def -p1 -F -mregexp -t'but slip and fall down.$' misseddisrupt2=\
/set currentmonkskill=%{disruptskill1} %;

/def -p1 -F -mregexp -t'and have to settle for a dropkick to the stomach.$' hit1disrupt2=\
/set currentmonkskill=%{disruptskill3} %;

/def -p1 -F -mregexp -t'but (he|she|it) deflects your hands.$' misseddisrupt3=\
/set currentmonkskill=%{disruptskill1} %;

/def -p1 -F -mregexp -t'but barely manage to move (her|it|him) at all.$' hit1disrupt3=\
/set currentmonkskill=%{disruptskill1} %;

/def -p1 -F -mregexp -t'forcing (him|her|it) to take a few steps back.$' hit2disrupt3=\
/set currentmonkskill=%{disruptskill1} %;


;;AREA SKILLS

/def -p1 -F -mregexp -t'backs off and you can\'t even get started.$' missedarea1=\
/set currentmonkskill=%{areaskill1} %;

/def -p1 -F -mregexp -t'^Most of your attacks are partially deflected or blocked.$' hit1area1=\
/set currentmonkskill=%{areaskill2} %;

/def -p1 -F -mregexp -t'shoulders and sides, but nothing deadly.$' hit2area1=\
/set currentmonkskill=%{areaskill2} %;

/def -p1 -F -mregexp -t'^You get some hits to the belly, getting some penetration.$' hit3area1=\
/set currentmonkskill=%{areaskill2} %;

/def -p1 -F -mregexp -t'getting your fingers between the ribs like you\'d hoped.$' hit4area1=\
/set currentmonkskill=%{areaskill2} %;

/def -p1 -F -mregexp -t'your knuckles between the ribs!$' hit5area1=\
/set currentmonkskill=%{areaskill2} %;

/def -p1 -F -mregexp -t'^You send ([-A-z\'\"\(\)\.\, ]+) crashing into ([-A-z\'\"\(\)\.\, ]+)!$' hit6area1=\
/set currentmonkskill=%{areaskill2} %;

/def -p1 -F -mregexp -t'blocks it and knocks you to the ground.$' missedarea2=\
/set currentmonkskill=%{areaskill1} %;

/def -p1 -F -mregexp -t'blocks it and knocks you to the ground.$' missedarea2=\
/set currentmonkskill=%{areaskill1} %;

/def -p1 -F -mregexp -t'^Your kick is true, but not forceful enough to knock anyone around.$' hit1area2=\
/set currentmonkskill=%{areaskill3} %;

/def -p1 -F -mregexp -t'The impact is less than satisfying.$' hit2area2=\
/set currentmonkskill=%{areaskill3} %;

/def -p1 -F -mregexp -t'^You kick it stumbling backwards!$' hit3area2=\
/set currentmonkskill=%{areaskill3} %;

/def -p1 -F -mregexp -t'^You knock ([-A-z\'\"\(\)\.\, ]+) into ([-A-z\'\"\(\)\.\, ]+)!$' hit4area2=\
/set currentmonkskill=%{areaskill3} %;

/def -p1 -F -mregexp -t'braces and blocks it.$' missedarea3=\
/set currentmonkskill=%{areaskill1} %;

/def -p1 -F -mregexp -t'^You drop down and sweep your leg low along the ground.$' hitarea3=\
/set currentmonkskill=%{areaskill1} %;


;;AVOID SKILLS


/def -p1 -F -mregexp -t'but are pushed back.$' missedavoid1=\
/set currentmonkskill=%{avoidskill1} %;

/def -p1 -F -mregexp -t'but can\'t get a decent claw in.$' hit1avoid1=\
/set currentmonkskill=%{avoidskill2} %;

/def -p1 -F -mregexp -t'but can\'t push hard enough to get into a flip.$' hit2avoid1=\
/set currentmonkskill=%{avoidskill2} %;

/def -p1 -F -mregexp -t'clawing it in the back with curved fingers!$' hit3avoid1=\
/set currentmonkskill=%{avoidskill2} %;

/def -p1 -F -mregexp -t'leaving you flat on your back!$' missedavoid2=\
/set currentmonkskill=%{avoidskill1} %;

/def -p1 -F -mregexp -t'and you end up merely slamming your back against ([-A-z\'\"\(\)\.\, ]+).$' hit1avoid2=\
/set currentmonkskill=%{avoidskill3} %;

/def -p1 -F -mregexp -t'over the shoulder with the heel of your foot.$' hit2avoid2=\
/set currentmonkskill=%{avoidskill3} %;

/def -p1 -F -mregexp -t'but fall short and land on your side.$' missedavoid3=\
/set currentmonkskill=%{avoidskill1} %;

/def -p1 -F -mregexp -t'and end up merely kicking (him|her|it) in the face with one foot.$' hit1avoid3=\
/set currentmonkskill=%{avoidskill1} %;
