
/def -p10 -F -aBCred -msimple -t"You feel like the pulse of chaos inside you is slowing down!" =\
	/echo -aBCred *************** SPAWN GOING DOWN!! *************** %;\

/def -p10 -F -aBCred -msimple -t"You feel exhausted, being here in the light."

/set spawn_timer_on=0

/def -p1000 -F -mregexp -t"Polymorph spawn(.+) \| (\d+)(mins|min) and (\d+)s" = \
	/set_spawn_time %{P2} %{P4}

/def set_spawn_time = \
	/set spawn_mins=%{1} %;\
	/set spawn_secs=%{2} %;\
	/start_spawn_timer

/def -p1000 -F -mregexp -t"Polymorph spawn(.+) \| (\d+)(min|mins)" = \
	/set_spawn_time %{P2} 0

/def -p1000 -F -mregexp -t"Polymorph spawn(.+) \| (\d+)s" = \
	/set_spawn_time 0 %{P2}

/def decrease_spawn_timer = \
	/echo timer goes: spawn_mins: %{spawn_mins} spawn_secs: %{spawn_secs} %;\
	/let seconds=%{spawn_mins} * 60 + %{spawn_secs} - 1 %;\
	/set spawn_mins=%{seconds} / 60 %;\
	/set spawn_secs=%{seconds} - %{spawn_mins} * 60 %;\
	/if ({mount_summoned}) \
		/set spawn_timer=Spawn %{spawn_mins}mins %{spawn_secs}s %;\
		/send @x %{tzarakk_mount} %;\
	/else \
		/set_spawn_status_line %;\
	/endif %;\

/def set_spawn_status_line = \
	/if ({spawn_mins} > 0 & {spawn_secs} > 0) \
		/set status_line_2=Spawn %{spawn_mins}mins %{spawn_secs}s %;\
	/elseif ({spawn_mins} > 0) \
		/set status_line_2=Spawn %{spawn_mins}mins %;\
	/elseif ({spawn_secs} > 0) \
		/set status_line_2=Spawn %{spawn_secs}s %;\
	/endif

/def start_spawn_timer = \
	/if ({spawn_timer_on} == 0) \
		/set spawn_timer_on=1 %;\
		/repeat -1 2 /decrease_spawn_timer %;\
	/endif

/def -p1010 -F -msimple -t"You pray for Azzarakk to recall his blessing." = \
	/unset spawn_timer %;\
	/set spawn_timer_on=0

/def -p100 -F -msimple -t"You force yourself deeper into the chaos frenzy!" = \
	/send @show effects

;; SKILLS

;; Chaotic Spawn
/def use_chaotic_spawn = \
	/send @use 'chaotic spawn' %{*}

/alias ucs /use_chaotic_spawn %{*}

;; Clawed Strike
/def use_clawed_strike = \
	/send @target %{*};use 'clawed strike' %{*}

/alias uc /use_clawed_strike %{*}

;; Kiss of Death
/def use_kiss_of_death = \
	/if (strlen({1}) > 0) \
		/send @target %{*};use kiss of death at %{*} %;\
	/endif

/alias ukd /use_kiss_of_death %{*}

