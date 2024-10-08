/def cast_spider_wrath = \
	/if (strlen({1}) > 0) \
		/send @target %{*} %;\
	/endif %;\
	/send @cast 'spider wrath' %{*}

/alias csw /cast_spider_wrath %{*}

/def cast_hunger = \
	/send @target %{*};cast hunger of the spider at %{*}

/alias chs /cast_hunger %{*}

/def cast_spider_conjuration = \
	/send @cast spider demon conjuration at me with %{*}

/alias csum /cast_spider_conjuration %{*}

/def cast_spider_control = \
	/send @cast spider demon control at me

/alias ctrl /cast_spider_control

/def cast_spider_sacrifice = \
	/send @cast spider demon sacrifice at %{*}

/alias csac /cast_spider_sacrifice %{*}

/def cast_spider_banishment = \
	/send @cast spider demon banishment at me

/alias cdis /cast_spider_banishment

/def cast_spider_inquiry = \
	/send @cast spider demon inquiry at me

/alias cinq /cast_spider_inquiry

/def cast_spider_channeling = \
	/send @cast spider demon channeling at me

/alias cchan /cast_spider_channeling

/def cast_toxic_dilution = \
	/if (strlen({1}) > 0) \
		/send @cast 'toxic dilution' %{*} %;\
	/else \
		/send @cast toxic dilution at me %;\
	/endif

/alias ctd /cast_toxic_dilution %{*}

/def cast_venom_blade = \
	/if (strlen({1}) > 0) \
		/send @cast 'venom blade' %{*}
	/else \
		/echo No target! %;\
	/endif

/alias cvb /cast_venom_blade %{*}

/def cast_spider_walk = \
	/if (strlen({1}) > 0) \
		/send @cast 'spider walk' %{*} %;\
	/else \
		/send @cast spider walk at me %;\
	/endif

/alias cswalk /cast_spider_walk %{*}

/def cast_heavy_weight = \
	/if (strlen({1}) > 0) \
		/send @cast 'heavy weight' %{*} %;\
	/else \
		/send @cast heavy weight at me %;\
	/endif

/alias chw /cast_heavy_weight %{*}

/def -aCmagenta -msimple -t"You feel lighter, but it doesn't seem to affect your weight!" = \
	/echo -aCmagenta HEAVY WEIGHT OFF!

/def cast_spider_mass_sacrifice = \
	/send @cast spider demon mass sacrifice

/alias cmsac /cast_spider_mass_sacrifice

/def cast_prayer_to_spider_queen = \
	/send @cast prayer to the spider queen

/alias cpsq /cast_prayer_to_spider_queen

/def cast_remove_poison = \
	/if (strlen({1}) > 0) \
		/send @cast remove poison at %{*} %;\
	/else \
		/send @cast remove poison at me %;\
	/endif

/alias crmp /cast_remove_poison %{*}

/def use_stab = \
	/if (strlen({1}) > 0) \
		/send @target %{*} %;\
	/endif %;\
	/send @use 'stab' %{*}

/alias us /use_stab %{*}

/def -aCgreen -msimple -t"Spider Queen smiles upon you and helps you control the demon."
/def -aCyellow -mregexp -t"(.+)'s demon feels easier to control than usual."
/def -aCbrightred -mregexp -t"(.+)s spider demon draws power from you."

/def -aCgreen -mregexp -t"A wound opens on your palm and you guide the (.+) blood at (.+)!"
/def -aCgreen -mregexp -t"A shower of (.+) blood flies from (.+)'s palm at (.+)!"

/def -aCred -msimple -t"You are losing the battle for control over your body!"

/def -aCred -msimple -t"You make a great stabbing maneuver, but your enemy blocks your attack."
/def -aCred -mregexp -t"You fail to stab (.+) with (.+)!"

/def -aCgreen -mregexp -t"Stream of blood from (.+)'s wound flies to you, tasting refreshing!"
/def -aCgreen -mregexp -t"You stab with (.+) causing blood to fly everywhere!"
/def -aCgreen -mregexp -t"You twist your blade inside (.+)'s belly!"
/def -aCgreen -mregexp -t"(.+) cringes from pain as your venomed blade bites into (.+) flesh!"
/def -aCgreen -mregexp -t"(.+) suffers as poison from your blade flows into (.+) system!"

