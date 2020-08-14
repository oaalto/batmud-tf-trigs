/def cast_hunger = \
	/send @target %{*};cast hunger of the spider at %{*}

/alias ch /cast_hunger %{*}

/def cast_spider_conjuration = \
	/send @cast spider demon conjuration at %{*}

/alias csum /cast_spider_conjuration %{*}

/def cast_spider_control = \
	/send @cast spider demon control

/alias ctrl /cast_spider_control

/def cast_spider_sacrifice = \
	/send @cast spider demon sacrifice at %{*}

/alias csac /cast_spider_sacrifice %{*}

/def cast_spider_banishment = \
	/send @cast spider demon banishment

/alias cdis /cast_spider_banisment

/def cast_spider_inquiry = \
	/send @cast spider demon inquiry

/alias cinq /cast_spider_inquiry

/def cast_spider_channeling = \
	/send @cast spider demon channeling

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

/def cast_heavy_weight = \
	/if (strlen({1}) > 0) \
		/send @cast 'heavy weight' %{*} %;\
	/else \
		/send @cast heavy weight at me %;\
	/endif

/alias chw /cast_heavy_weight %{*}

/def cast_spider_mass_sacrifice = \
	/send @cast spider demon mass sacrifice

/alias cmsac /cast_spider_mass_sacrifice

/def cast_prayer_to_spider_queen = \
	/cast prayer to the spider queen

/alias cpsq /cast_prayer_to_spider_queen

/def use_stab = \
	/send @use 'stab' %{*}

/alias us /use_stab %{*}


