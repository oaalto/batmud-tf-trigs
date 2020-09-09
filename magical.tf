;; Floating Disc
/def cast_floating_disc =\
	/send @cast floating disc

/alias cfd /cast_floating_disc

/def ga_from_disc = /send @get all from my disc
/alias gad /ga_from_disc

/def ga_armour_from_disc = /send @get all armour from my disc
/alias gaad /ga_armour_from_disc

/def ga_weapon_from_disc = /send @get all weapon from my disc
/alias gawd /ga_weapon_from_disc

/def put_noeq_disc = /send @put noeq in my disc
/alias pd /put_noeq_disc

/def -p10 -F -aBCred -msimple -t"Your disc wavers dangerously." =\
	/echo -aBCred FLOATING DISC IS GOING DOWN!

;; Invisibility
/def cast_invisibility =\
        /if (strlen({1}) > 0)\
                /send @cast invisibility at %{*} %;\
        /else \
                /send @cast invisibility at me %;\
        /endif

/alias cinv /cast_invisibility %{*}

;; Infravision
/def cast_infravision =\
        /if (strlen({1}) > 0)\
                /send @cast infravision at %{*} %;\
        /else \
                /send @cast infravision at me %;\
        /endif

/alias cinf /cast_infravision %{*}

;; Lift of Load
/def cast_lift_of_load = \
	/if (strlen({1}) < 0) \
		/send @cast lift of load at %{*} %;\
	/else \
		/send @cast lift of load at me %;\
	/endif

/alias cld /cast_lift_of_load %{*}

/def -p1000 -F -aBCred -msimple -t"You feel odd. Not weaker, but..."

;; Repeat Heal Self
/def cast_heal_self_full = \
	/send @repeat inf cast heal self %;\

/alias chf /cast_heal_self_full %{*}

;; Mirror Image
/def cast_mirror_image = \
	/if (strlen({1}) > 0) \
		/send @cast mirror image at %{*} %;\
	/else \
		/send @cast mirror image at me %;\
	/endif

/alias cmi /cast_mirror_image %{*}

;; Analysis of Magic Lore
/def -p10 -F -P2Cgreen -mregexp -t"(.+) (screams in pain.)"
/def -p10 -F -P2Cblue -mregexp -t"(.+) (writhes in agony.)"
/def -p10 -F -P2Ccyan -mregexp -t"(.+) (shudders from the force of the attack.)"
/def -p10 -F -P2Cyellow -mregexp -t"(.+) (grunts from the pain.)"
/def -p10 -F -P2Cmagenta -mregexp -t"(.+) (winces a little from the pain.)"
/def -p10 -F -P2Cred -mregexp -t"(.+) (shrugs off the attack.)"

