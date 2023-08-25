;; Boons

;; Leecher
/def -p10 -F -aBCgreen -msimple -t"You leech some of your foes energy."

;; Races

;; Minotaur
/def -p10 -F -aBCyellow -msimple -t"You realize a more effective way to use your horns!"

;; Sprite
/def -p10 -F -aBCyellow -msimple -t"Your wings glow as they absorb more magic!"

;; Catfolk
/def -p10 -F -aCgreen -msimple -t"Whee, your neat fur is dry again!"

;; Centaur
/def -p10 -F -aBCyellow -msimple -t"You gain insight to warhorse philosophy!"

;; Thrikhren
/def -p10 -F -aBCyellow -msimple -t"You learn more about the praying mantis tactics!"
/def -p10 -F -aBCred -msimple -t"The water BURNS your skin."

;; Ent
/def -p10 -F -aBCred -msimple -t"You feel exhausted, being here in the dark."

;; Basic dig grave rip action
/def normal_rip = /send @rip_action set get all from corpse;dig grave;drop zinc;drop mowgles

/alias dig_rip /normal_rip

