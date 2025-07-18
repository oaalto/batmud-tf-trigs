/set in_battle=0

/def -p10000 -F -mregexp -t"^[\*]+ Round .* [\*]+$" battle_round = \
	/send @scan all %;\
	/send @sc %;\
	/set in_battle=1

/def -p1000 -F -msimple -t"You are not in combat right now." = \
	/set in_battle=0

/def -p10000 -F -aBCred -mregexp -t'(.+) is DEAD, R.I.P.' = /send @scan

;; Mob Shapes
/def -p10 -F -aBCgreen -mregexp -t"is in excellent shape"
/def -p10 -F -aCgreen -mregexp -t"is in a good shape"
/def -p10 -F -aCcyan -mregexp -t"is slightly hurt"
/def -p10 -F -aBCcyan -mregexp -t"is noticeably hurt"
/def -p10 -F -aCyellow -mregexp -t"is not in a good shape"
/def -p10 -F -aBCyellow -mregexp -t"is in bad shape"
/def -p10 -F -aBCred -mregexp -t"is in very bad shape"
/def -p10 -F -aCred -mregexp -t"is near death"

;; Ambush
/def -p10 -F -aBCred -msimple -t"You cannot leave, you have been AMBUSHED."
/def -p10 -F -aBCred -msimple -t"You've been ambushed!"

;; Bleeding
/def -p10 -F -P1BCred -mregexp -t"You wish your wounds would stop (BLEEDING) so much!"

;; Crits
/def -p10 -F -P1Cwhite -mregexp -t"You score a (CRITICAL) hit!"
/def -p10 -F -P1BCwhite -mregexp -t"You score a (\*CRITICAL\*) hit!"
/def -p10 -F -P1BCwhite -mregexp -t"You score a (.*CRITICAL.*) hit!"

;; Camping
/def -p10 -F -aBCgreen -msimple -t"You awaken from your short rest, and feel slightly better."
/def -p10 -F -aBCyellow -msimple -t"You feel a bit tired."
/def -p10 -F -aBCyellow -msimple -t"You stretch yourself and consider camping."
/def -p10 -F -aBCyellow -msimple -t"You feel like camping a little."

;; Meditation
/def -p10 -F -aBCyellow -msimple -t"You feel in harmony with yourself, the universe and life in general."

;; Stunned
/def -p10 -F -aBCred -msimple -t"You are stunned."
/def -p10 -F -aBCgreen -msimple -t"You are no longer stunned."
/def -p10 -F -aBCgreen -msimple -t"Your inner strength keeps your head clear!"
/def -p10 -F -aBCgreen -msimple -t"...BUT you break it off."
/def -p10 -F -aBCgreen -msimple -t"...BUT you break it off with intense concentration."
/def -p10 -F -aBCgreen -msimple -t"It doesn't hurt at all!"
/def -p10 -F -aBCgreen -msimple -t"Your thoughts still feel clear and calm."

/def -p10 -F -aBCred -msimple -t"You get hit, and your eyes lose focus slightly." = \
	/echo -aBCred STUNNED!
/def -p10 -F -aCred -msimple -t"You are stunned and unable to do anything."

/def -p10 -F -aBCred -msimple -t"You try to concentrate but your head spins like a whirligig!" = \
	/echo -aBCred STUNNED!
/def -p10 -F -aBCred -msimple -t"You lose connection to reality, becoming truly STUNNED." = \
	/echo -aBCred STUNNED!
/def -p10 -F -aBCred -msimple -t"You become somewhat confused, losing your edge." = \
	/echo -aBCred STUNNED!
/def -p10 -F -aBCred -msimple -t"Your mind reels and the world becomes blurred." = \
	/echo -aBCred STUNNED!

;; Stun
/def -p100 -F -aCgreen -mregexp -t"You (stun|STUN)"
/def -p100 -F -aCgreen -mregexp -t"Your attack causes (.+) to lose focus slightly."
/def -p100 -F -aCgreen -mregexp -t"You hurt (.+) who seems to become somewhat confused."
/def -p100 -F -aCgreen -mregexp -t"You make (.+) stagger helplessly in pain and confusion."
/def -p100 -F -aCgreen -mregexp -t"You STUN (.+), who loses connection to reality."
/def -p100 -F -aCgreen -mregexp -t"You cause (.+) world to become blurred and unfocused."
/def -p100 -F -aCgreen -mregexp -t"(.+) is suddenly almost unable to stay in balance."
/def -p100 -F -aCgreen -mregexp -t"(.+) is STUNNED."

/def -p100 -F -aCred -mregexp -t"..WHO breaks it off."

;; Spell Related Hilites

;; Spell Failures
/def -p10 -F -aBCred -msimple -t"You are disturbed by something, your spell misfires."
/def -p10 -F -aBCred -msimple -t"Your concentration drifts away as you think you feel a malignant aura."
/def -p10 -F -aBCred -msimple -t"You stumble and lose your concentration."
/def -p10 -F -aBCred -msimple -t"Your concentration fails and so does your spell."
/def -p10 -F -aBCred -msimple -t"You lose touch with the magic and the spell fizzles."
/def -p10 -F -aBCred -msimple -t"You stutter the magic words and fail the spell."
/def -p10 -F -aBCred -msimple -t"Your mind plays a trick with you and you fail in your spell."
/def -p10 -F -aBCred -msimple -t"You fail miserably in your spell."
/def -p10 -F -aBCred -msimple -t"Your spell just sputters."
/def -p10 -F -aBCred -msimple -t"Something touches you and spoils your concentration ruining the spell."
/def -p10 -F -aBCred -msimple -t"You poke yourself in the eye and your spell misfires."
/def -p10 -F -aBCred -msimple -t"Something touches you and spoils your concentration ruining the spell."
/def -p10 -F -aBCred -msimple -t"You fail to chant the spell correctly."
/def -p10 -F -aBCred -msimple -t"You do not have enough spell points to cast the spell."

;; Fumble
/def -p10 -F -aBCyellow -mregexp -t"You falter and fumble the spell."

;; Cast
/def -p10 -F -P1BCwhite -mregexp -t"You clap your hands and whisper '(.+)'"
/def -p10 -F -P1BCgreen -mregexp -t"You watch with self-pride as your (.+) hits (.+)."
/def -p10 -F -P2BCwhite -mregexp -t"You watch with self-pride as your (.+) hits (.+)."
/def -p10 -F -P1BCwhite -mregexp -t"You boom in sinister voice '(.+)'"
/def -p10 -F -P1BCwhite -mregexp -t"You utter the magic words '(.+)'"
/def -p10 -F -P1BCwhite -mregexp -t"You fill up your cheeks with air and exhale '(.+)'"
/def -p10 -F -P1BCwhite -mregexp -t"You slowly cut your arm with your finger-nail and darkly whisper '(.+)'"

;; Hit
/def -p10 -F -aBCred -mregexp -t"[A|An] (.+) hits you."

;; Crits
/def -p10 -F -aCgreen -msimple -t"You feel like you managed to channel additional POWER to your spell."

;; Death
/def -p10 -F -P1BCred -mregexp -t"You are about to (DIE)!"

;; Essence Eye
/def -p10 -F -P1BCyellow -mregexp -t"^(.+): ([#]+)$"
/def -p10 -F -P2BCwhite -mregexp -t"^(.+): ([#]+)$"

;; Mana
/def -p10 -F -aBCmagenta -msimple -t"You sizzle with magical energy."

;; Boons
/def -F -aCgreen -msimple -t"Tactically shielded, you thwart a potentially devastating critical strike."
/def -F -aCgreen -msimple -t"Guarding flaws, you endure, deflecting a looming critical strike."
/def -F -aCgreen -msimple -t"Protecting flaws, you endure, evading a lethal critical strike."
/def -F -aCgreen -msimple -t"Covering weak spots, you defy a critical strike's impact."
/def -F -aCgreen -msimple -t"Adapting swiftly, you nullify the impact of a critical strike."

;; Banes
/def -p10 -F -aCred -msimple -t"The desire to choose between good and evil overwhelms you, causing you to"
/def -p10 -F -aCred -msimple -t"inflict damage upon yourself."

;; Essence collection
/def -p10 -F -aCblue -mregexp -t"(.+) spills some of (.+) essence." = \
	/if ({in_battle}) \
		/send @get all essence;keep all essence;put all essence in %{rig} %;\
	/endif

;; Zinium ball collection
/def -p10 -F -aCblue -msimple -t"You discover a glowing ball of concentrated zinium <<radiating>>" = \
	/send @keep all orb;put all orb in %{rig}

;; Blueprint collection
/def -p10 -F -aCblue -mregexp -t"You discover Rixx-Tec blueprint of" = \
	/send @keep all blueprint;store blueprint 

;; Poison
/def -p1000 -F -P1BCred -mregexp -t"You shiver and suffer from (POISON)!!"
/def -p1000 -F -aCred -msimple -t"You shiver and suffer from POISON!!"
/def -p1000 -F -aCgreen -msimple -t"The sauna cured your poison!"

;; Ferry
/def -p1000 -F -mregexp -t"You have been scheduled for a trip to (.+)." = \
	/send @put mithril in purse;put batium in purse;put anipium in purse;put platinum in purse

/def -p1000 -F -mregexp -t"You pay the ticketmaster (.+) gold, and he lets you board the ship." = \
	/send @get 250 platinum from purse

;; Aggro
/def -p1000 -F -aCred -mregexp -t"got mad at hostile actions."
/def -p1000 -F -aCred -mregexp -t"is disturbed by spellcasting."

;; Infravision
/def -p1000 -F -aCred -msimple -t"Everything no longer seems so red."

;; Skill Ups
/def -p1000 -F -aCgreen -mregexp -t"You feel like you just got slightly better in (.+)."

;; Racial Frenzy
/def -p1000 -F -aCgreen -msimple -t"You enter a frenzy, speeding up your actions!"
/def -p1000 -F -aCred -msimple -t"You slip out of your frenzy."

/def -p1000 -F -aCred -msimple -t"You are already fighting!"

;; Dodge, Parry, Riposte & Misses
/def -p100 -F -aCgreen -msimple -t"You dodge."
/def -p100 -F -aCgreen -msimple -t"You parry."
/def -p100 -F -aCgreen -msimple -t"...AND riposte."
/def -p100 -F -aCgreen -mregexp -t"(.+) misses."

;; Breaking
/def -F -aCred -mregexp -t"Your (.+) breaks into zillions of pieces."

