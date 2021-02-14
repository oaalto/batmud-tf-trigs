/def cast_spider_wrath = \
	/if (strlen({1}) > 0) \
		/send @target %{*}
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
	/send @cast 'venom blade' %{*}

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
	/cast prayer to the spider queen

/alias cpsq /cast_prayer_to_spider_queen

/def use_stab = \
	/send @use 'stab' %{*}

/alias us /use_stab %{*}

/def -aCgreen -msimple -t"Spider Queen smiles upon you and helps you control the demon."
/def -aCyellow -mregexp -t"(.+)'s demon feels easier to control than usual."
/def -aCbrightred -mregexp -t"(.+)s spider demon draws power from you."

