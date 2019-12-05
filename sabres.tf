;; Lounging
/def use_lounging = \
	/send use lounging

/alias ul /use_lounging

/def -p1000 -F -aCBgreen -msimple -t"You are in a mood for a bit of lounging again."

;; Sabre fence
/def use_sabre_fence = \
	/if (strlen({*}) > 0) \
		/send @target %{*};use sabre fence at %{*} %;\
	/else \
		/send use 'sabre fence' %;\
	/endif

/alias usf /use_sabre_fence %{*}

;; Gloveknock stuff below
/set sabre_weapon=sabre

/def use_gloveknock = \
	/send @remove %{saber_weapon} from right hand;target %{*};use gloveknock at %{*} 
/alias ug /use_gloveknock %{*}

/def -p1000 -F -mregexp -t"You swing your arm and hit (.*) straight on the nose, bloodying it bad!" = \
	/send @wield %{sabre_weapon}

/def -p1000 -F -mregexp -t"You slam (.*) on the jaw very hard making (.*) cry out in pain!" = \
	/send @wield %{sabre_weapon}

/def -p1000 -F -mregexp -t"With a swift and precise punch you strike (.*) on his face," = \
        /send @wield %{sabre_weapon}

/def -p1000 -F -aCred -msimple -t"You frantically try to grab a weapon, but cannot get a grip in time." = \
	/send @wield %{sabre_weapon}

/def -aCred -msimple -t"You are still fumbling with your weapon. It is one slippery thing!"

/def -p1000 -F -aCgreen -mregexp -t"You wield (.*) in your right (.*)."

/def wield_sabre_weapon = \
	/send wield %{sabre_weapon}

/alias wsw /wield_sabre_weapon

