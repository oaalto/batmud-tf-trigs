
/def -p10 -F -aBCred -msimple -t"You feel like the pulse of chaos inside you is slowing down!" =\
	/echo -aBCred *************** SPAWN GOING DOWN!! *************** %;\

/def -p10 -F -aBCred -msimple -t"You feel exhausted, being here in the light."

/def -p1000 -F -mregexp -t"Polymorph spawn(.+) \| (\d+)min and (\d+)s" = \
	/set spawn_mins=%{P2} %;\
	/set spawn_secs=%{P3} %;\
	/if ({mount_summoned}) \
		/set spawn_timer=Spawn %{P2}mins %{P3}s %;\
		/send @x %{tzarakk_mount} %;\
	/else \
		/set status_line_2=Spawn %{P2}mins %{P3}s %;\
	/endif

/def -p1000 -F -mregexp -t"Polymorph spawn(.+) \| (\d+)min" = \
	/set spawn_mins=%{P2} %;\
	/set spawn_secs=0 %;\
	/if ({mount_summoned}) \
		/set spawn_timer=Spawn %{P2}mins
		/send @x %{tzarakk_mount} %;\
	/else \
		/set status_line_2=Spawn %{P2}mins %;\
	/endif

/def -p1000 -F -mregexp -t"Polymorph spawn(.+) \| (\d+)s" = \
	/set spawn_mins=0 %;\
	/set spawn_secs=%{P2} %;\
	/if ({mount_summoned}) \
		/set spawn_timer=Spawn %{P2}s
		/send @x %{tzarakk_mount} %;\
	/else \
		/set status_line_2=Spawn %{P2}s %;\
	/endif

/def start_spawn_timer = \
	/set spawn_timer_pid=/repeat -0:01 i /decrease_spawn_timer

/def decrease_spawn_timer = \
	/let seconds=%{spawn_mins} * 60 + %{spawn_secs} - 1 %;\
	/set spawn_mins=%{seconds} / 60 %;\
	/set spawn_secs=%{seconds} - %{spawn_mins} * 60 &;\
	/if ({mount_summoned}) \
		/send @x %{tzarakk_mount} %;\
	/else \
		/if ({spawn_mins} > 0 && {spawn_secs} > 0) \
			/set status_line_2=Spawn %{spawn_mins}mins %{spawn_secs}s %;\
		/elseif ({spawn_mins} > 0) \
			/set status_line_2=Spawn %{spawn_mins}mins %;\
		/elseif ({spawn_secs} > 0) \
			/set status_line_2=Spawn %{spawn_secs}s %;\
		/endif %;\
	/endif

/def -p1010 -F -msimple -t"You pray for Azzarakk to recall his blessing." = \
	/unset spawn_timer %;\
	/kill %{spawn_timer_pid}

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

