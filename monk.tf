/set kata_done=0
/set doing_meditation=0

;; NORMAL SKILLS

;; Kiai-cry
/def use_kiai_cry = \
	/monkskillinterrupt %;\
	/if (strlen({1}) > 0) \
		/send @target %{*};use kiai-cry at %{*} %;\
	/endif

/alias cs /use_kiai_cry %{*}

;; Joint lock
/def use_joint_lock = \
	/monkskillinterrupt %;\
	/if (strlen({1}) > 0) \
		/send @target %{*} %;\
	/endif %;\
	/send @use 'joint lock' %{*}

/alias ujl /use_joint_lock %{*}

;; Pattern weave
/def use_pattern_weave = \
	/monkskillinterrupt %;\
	/if (strlen({1}) > 0) \
		/send @target %{*} %;\
	/endif %;\
	/send @use 'pattern weave' %{*}

/alias upw /use_pattern_weave %{*}

;; Skulking
/def use_skulking = \
	/monkskillinterrupt %;\
	/send @use skulking

/alias usk /use_skulking

;; Iron Palm
/def use_iron_palm =\
	/monkskillinterrupt %;\
	/send @target %{*};use "iron palm" %{*}

/alias ip /use_iron_palm %{*}

/def -F -aBCred -msimple -t"You do a complex attack maneuver but miss."

;; Kata
/def use_kata = \
	/monkskillinterrupt %;\
	/send @use kata %;\

/alias kata /use_kata %{*}

/def -p10000 -F -msimple -t"You perform the kata." = \
	/set kata_done=1 %;\
	/if ({doing_meditation}) \
		/use_meditation %;\
	/endif

/def -p10000 -F -mregexp -t"You perform the peaceful (.+) kata." = \
  /set kata_done=1 %;\
  /if ({doing_meditation}) \
	  /use_meditation %;\
  /endif

;; Meditation
/def use_meditation = \
	/monkskillinterrupt %;\
	/if ({kata_done}) \
		/send @use meditation %;\
	/else \
		/set doing_meditation=1 %;\
		/use_kata %;\
	/endif

/alias med /use_meditation %{*}

;; Mind over body
/def use_mind_over_body = \
	/monkskillinterrupt %;\
	/send @use mind over body at %{*}

/alias umb /use_mind_over_body %{*}

/def -p10000 -F -msimple -t"You start concentrating on the skill." = \
	/set kata_done=0

/def -p10000 -F -msimple -t"You sit down and start meditating." = \
	/set doing_meditation=0

/def -p10000 -F -aCred -msimple -t"You fail to reach the state of inner harmony."

/def -p10000 -F -aCblue -msimple -t"Your training is starting to pay off!"
/def -p10000 -F -aCblue -mregexp -t"You feel like you have mastered the art of (.+). It might be time to find another advanced technique."

/def -p10000 -F -aCred -msimple -t"You feel like imaginary food is done digesting."

/alias uds /do_disrupt_skill %{*}
/def do_disrupt_skill= \
	/send @target %{*};@use '%{currentdisruptskill}' %{*}

/alias uaa /do_area_skill %{*}
/def do_area_skill= \
	/send @target %{*};@use '%{currentareaskill}' %{*}

/alias uar /do_armor_skill %{*}
/def do_armor_skill= \
	/send @target %{*};@use '%{currentarmorskill}' %{*}

/alias uav /do_avoid_skill %{*}
/def do_avoid_skill= \
	/send @target %{*};@use '%{currentavoidskill}' %{*}

/alias uws /use_wave_crest_strike %{*}
/def use_wave_crest_strike = \
	/set currentdisruptskill=%{disruptskill1} %;\
	/do_disrupt_skill %{*}

/alias ugk /use_geyser_force_kick %{*}
/def use_geyser_force_kick = \
	/set currentdisruptskill=%{disruptskill2} %;\
	/do_disrupt_skill %{*}

/alias uek /use_earthquake_kick %{*}
/def use_earthquake_kick = \
	/set currentarmorskill=%{armourskill2} %;\
	/do_armor_skill %{*}

/alias uas /use_avalance_slam %{*}
/def use_avalance_slam = \
        /set currentarmorskill=%{armourskill3} %;\
        /do_armor_skill %{*}

/set armourskill1=falling boulder strike
;;/set armourskill2=falling boulder strike
/set armourskill3=falling boulder strike
/set armourskill2=earthquake kick
;;/set armourskill3=avalanche slam

/set disruptskill1=wave crest strike
;;/set disruptskill2=wave crest strike
;;/set disruptskill3=wave crest strike
/set disruptskill2=geyser force kick
/set disruptskill3=tsunami push

/set areaskill1=hydra fang strike
;;/set areaskill2=hydra fang strike
/set areaskill3=hydra fang strike
/set areaskill2=winged horse kick
;;/set areaskill3=dragon tail sweep

/set avoidskill1=falcon talon strike
;;/set avoidskill2=falcon talon strike
/set avoidskill3=falcon talon strike
/set avoidskill2=elder cobra kick
;;/set avoidskill3=lions teeth throw

/def monkskillinterrupt=\
	/set currentarmorskill=%{armourskill1} %;\
	/set currentdisruptskill=%{disruptskill1} %;\
	/set currentareaskill=%{areaskill1} %;\
	/set currentavoidskill=%{avoidskill1}

/monkskillinterrupt

/def -p10000 -F -msimple -t"You are not in combat right now." = /monkskillinterrupt
/def -p10000 -F -msimple -t"Your movement prevents you from doing the skill." = /monkskillinterrupt
/def -p10000 -F -msimple -t"GgrTF:  ---- SKILL STOPPED ----" = /monkskillinterrupt
/def -p10000 -F -msimple -t"You lose your concentration and cannot do the skill." = /monkskillinterrupt
/def -p10000 -F -msimple -t"You break your skill attempt." = /monkskillinterrupt
/def -p10000 -F -msimple -t"You stop concentrating on the skill and begin searching for a proper place to rest." = /monkskillinterrupt
/def -p10000 -F -msimple -t"You start chanting." = /monkskillinterrupt

;; ARMOUR SKILLS

/def -p1 -F -aCgreen -mregexp -t"^The (blow|thrashing) knocks some of (its|her|his) defenses loose,	leaving (it|him|her) temporarily vulnerable!$"
/def -p1 -F -aCgreen -mregexp -t"^As (she|he|it) lands, some of (his|her|its) protection shifts out of place, leaving (him|her|it) temporarily vulnerable!$"

;; Falling Boulder Strike
/def -p1 -F -aBCred -mregexp -t"but only score a glancing blow.$" = /set currentarmorskill=%{armourskill1}
/def -p1 -F -aCcyan -mregexp -t"but only bruise the muscle.$" = /set currentarmorskill=%{armourskill2}
/def -p1 -F -aCblue -mregexp -t"scoring a solid hit!$" = /set currentarmorskill=%{armourskill2}
/def -p1 -F -aCyellow -mregexp -t"and you feel something pop!$" = /set currentarmorskill=%{armourskill2}
/def -p1 -F -aCgreen -mregexp -t"and you feel something snap!$" = /set currentarmorskill=%{armourskill2}
/def -p1 -F -aCmagenta -mregexp -t"and you feel something shatter!$" = /set currentarmorskill=%{armourskill2}

;; Earthquake Kick
/def -p1 -F -aBCred -mregexp -t"but don't get any solid hits.$" = /set currentarmorskill=%{armourskill1}
/def -p1 -F -aCcyan -mregexp -t"preventing you from hitting with the others.$" = /set currentarmorskill=%{armourskill3}
/def -p1 -F -aCblue -mregexp -t"getting two hits in!$" = /set currentarmorskill=%{armourskill3}
/def -p1 -F -aCyellow -mregexp -t"shaking (his|her|its) whole body!$" = /set currentarmorskill=%{armourskill3}

;; Avalanche Slam
/def -p1 -F -aBCred -mregexp -t"outstretched limbs, but miss.$" = /set currentarmorskill=%{armourskill1}
/def -p1 -F -aCcyan -mregexp -t"(manage|manages|managed) to land on (his|her|its) butt.$" = /set currentarmorskill=%{armourskill1}
/def -p1 -F -aCblue -mregexp -t"but (he|she|it) twists to (landon|land on) (his|her|its) side.$" = /set currentarmorskill=%{armourskill1}
/def -p1 -F -aCyellow -mregexp -t"and throw (him|it|her) down onto (his|her|its) back!$" = /set currentarmorskill=%{armourskill1}

;; DISRUPT SKILLS

/def -p1 -F -aCgreen -mregexp -t"shakes (his|her|its) head back and forth, clearly disoriented.$"
/def -p1 -F -aCgreen -mregexp -t"blinks distractedly, looking somewhat blind!$"
/def -p1 -F -aCgreen -mregexp -t"hacks and wheezes, looking disoriented.$"
/def -p1 -F -aCgreen -mregexp -t"takes a moment too long to regain (his|her|its) footing.$"

;; Wave Crest Strike
/def -p1 -F -aBCred -mregexp -t"but can't make flesh contact.$" = /set currentdisruptskill=%{disruptskill1}
/def -p1 -F -aCcyan -mregexp -t"on the side of the head.$" = /set currentdisruptskill=%{disruptskill2}
/def -p1 -F -aCblue -mregexp -t"a harsh slap across the jaw.$" = /set currentdisruptskill=%{disruptskill2}
/def -p1 -F -aCyellow -mregexp -t"but miss the veins you were aiming for.$" = /set currentdisruptskill=%{disruptskill2}
/def -p1 -F -aCgreen -mregexp -t"hitting one of the arteries and disrupting (his|her|its) blood flow!$" = /set currentdisruptskill=%{disruptskill2}
/def -p1 -F -aBCgreen -mregexp -t"hitting both arteries and temporarily halting (his|her|its) blood to the brain!$" = /set currentdisruptskill=%{disruptskill2}

;; Geyser Force Kick
/def -p1 -F -aBCred -mregexp -t"but slip and fall down.$" = /set currentdisruptskill=%{disruptskill1}
/def -p1 -F -aCcyan -mregexp -t"You jump up and kick (.+) in the ribcage, but don't get enough contact to backflip." = /set currentdisruptskill=%{disruptskill3}
/def -p1 -F -aCblue -mregexp -t"and have to settle for a dropkick to the stomach.$" = /set currentdisruptskill=%{disruptskill3}
/def -p1 -F -aCyellow -mregexp -t"You land a single kick in the middle of (.+)'s chest, backflip, and land on your feet." = /set currentdisruptskill=%{disruptskill3}

;; Tsunami Push
/def -p1 -F -aBCred -mregexp -t"but (he|she|it) deflects your hands.$" = /set currentdisruptskill=%{disruptskill1}
/def -p1 -F -aCcyan -mregexp -t"but barely manage to move (her|it|him) at all.$" = /set currentdisruptskill=%{disruptskill1}
/def -p1 -F -aCblue -mregexp -t"forcing (him|her|it) to take a few steps back.$" = /set currentdisruptskill=%{disruptskill1}

;; AREA SKILLS

;; Hydra Fang Strike
/def -p1 -F -aBCred -mregexp -t"backs off and you can't even get started.$" = /set currentareaskill=%{areaskill1}
/def -p1 -F -aCcyan -mregexp -t"^Most of your attacks are partially deflected or blocked.$" = /set currentareaskill=%{areaskill2}
/def -p1 -F -aCblue -mregexp -t"shoulders and sides, but nothing deadly.$" = /set currentareaskill=%{areaskill2}
/def -p1 -F -aCyellow -mregexp -t"^You get some hits to the belly, getting some penetration.$" = /set currentareaskill=%{areaskill2}
/def -p1 -F -aCgreen -mregexp -t"getting your fingers between the ribs like you\"d hoped.$" = /set currentareaskill=%{areaskill2}
/def -p1 -F -aCmagenta -mregexp -t"your knuckles between the ribs!$" = /set currentareaskill=%{areaskill2}
/def -p1 -F -aBCmagenta -mregexp -t"^You send (.+) crashing into (.+)!$" = /set currentareaskill=%{areaskill2}

;; Winged Horse Kick
/def -p1 -F -aBCred -mregexp -t"blocks it and knocks you to the ground.$" = /set currentareaskill=%{areaskill1}
/def -p1 -F -aCcyan -mregexp -t"^Your kick is true, but not forceful enough to knock anyone around.$" = /set currentareaskill=%{areaskill3}
/def -p1 -F -aCblue -mregexp -t"The impact is less than satisfying.$" = /set currentareaskill=%{areaskill3}
/def -p1 -F -aCyellow -mregexp -t"^You kick it stumbling backwards!$" = /set currentareaskill=%{areaskill3}
/def -p1 -F -aCgreen -mregexp -t"^You knock (.+) into (.+)!$" = /set currentareaskill=%{areaskill3}

;; Dragon Tail Sweep
/def -p1 -F -aBCred -mregexp -t"braces and blocks it.$" = /set currentareaskill=%{areaskill1}
/def -p1 -F -aCmagenta -mregexp -t"^You drop down and sweep your leg low along the ground.$" = /set currentareaskill=%{areaskill1}

;; AVOID SKILLS

;; Falcon Talon Strike
/def -p1 -F -aBCred -mregexp -t"but are pushed back.$" = /set currentavoidskill=%{avoidskill1}
/def -p1 -F -aCcyan -mregexp -t"but can't get a decent claw in.$" = /set currentavoidskill=%{avoidskill2}
/def -p1 -F -aCblue -mregexp -t"but can't push hard enough to get into a flip.$" = /set currentavoidskill=%{avoidskill2}
/def -p1 -F -aCyellow -mregexp -t"clawing (.+) in the back with curved fingers!$" = /set currentavoidskill=%{avoidskill2}

;; Elder Cobra Kick
/def -p1 -F -aBCred -mregexp -t"leaving you flat on your back!$" = /set currentavoidskill=%{avoidskill1}
/def -p1 -F -aCcyan -mregexp -t"and you end up merely slamming your back against (.+).$" = /set currentavoidskill=%{avoidskill3}
/def -p1 -F -aCblue -mregexp -t"over the shoulder with the heel of your foot.$" = /set currentavoidskill=%{avoidskill3}

;; Lions Teeth Throw
/def -p1 -F -aBCred -mregexp -t"but fall short and land on your side.$" = /set currentavoidskill=%{avoidskill1}
/def -p1 -F -aCcyan -mregexp -t"and end up merely kicking (.+) in the face with one foot.$" = /set currentavoidskill=%{avoidskill1}

