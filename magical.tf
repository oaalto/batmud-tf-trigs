/load batmud-tf-trigs/mage_lightning.tf

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

;; Water Walking
/def cast_water_walking =\
        /if (strlen({1}) > 0)\
                /send @cast water walking at %{*} %;\
        /else \
                /send @cast water walking at me %;\
        /endif

/alias cww /cast_water_walking %{*}

;; Magic Missile
/def cast_magic_missile =\
        /send @target %{*};cast 'magic missile' %{*}

/alias cmm /cast_magic_missile %{*}

