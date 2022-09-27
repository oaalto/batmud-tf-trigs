/gag *Roc

;; Start Combat
/def start_combat = \
  /if (strlen({1}) > 0) \
    /use_bladed_fury %;\
    /send @k %{*} %;\
  /endif %;\

/alias cs /start_combat %{*}

;; Bladed Fury
/def use_bladed_fury = \
  /if (strlen({1}) > 0) \
    /send @target %{*} %;\
  /endif %;\
  /send use 'bladed fury' %{*}

/alias ubf /use_bladed_fury %{*}


