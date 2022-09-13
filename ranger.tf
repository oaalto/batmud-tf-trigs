;; Start Combat
/def start_combat = \
  /use_bladed_fury %{*} %;\
  /if (strlen({1}) > 0) \
    /send @kill %{*} %;\
  /endif %;\

/alias cs /start_combat %{*}

;; Bladed Fury
/def use_bladed_fury = \
  /if (strlen({1}) > 0) \
		/send @target %{*} %;\
  /endif %;\
  /send use 'bladed fury' %{*}

/alias ubf /use_bladed_fury %{*}


