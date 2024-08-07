	object_const_def
	const OLDCITYPOKECENTER1F_NURSE
	const OLDCITYPOKECENTER1F_FISHER
	const OLDCITYPOKECENTER1F_COOLTRAINER_F
	const OLDCITYPOKECENTER1F_ROCKET

OldCityPokecenter1F_MapScripts:
	def_scene_scripts

	def_callbacks

OldCityPokecenter1FNurseScript:
	jumpstd PokecenterNurseScript

; Seen in the SW97 demo. Purpose? No clue.
; Possibly like the RBY one.
OldCityPokecenter1FRocketGruntScript:
	jumptextfaceplayer OldCityPokecenter1FRocketGruntText

OldCityPokecenter1FRocketGruntText:
	text "Kekeke! BOSS, this"
	line "is so great!"
	
	para "Hm? I'm on the"
	line "phone, here! Shoo!"
	done

OldCityPokecenter1FCoolTrainerFScript:
	jumptextfaceplayer OldCityPokecenter1FCoolTrainerFText

OldCityPokecenter1FCoolTrainerFText:
	text "WALKER is always"
	line "riding on his"
	cont "SKARMORY!"
	
	para "The problem is, he"
	line "doesn't leave time"
	cont "for challengers…"
	done

OldCityPokecenter1FFisherScript:
	jumptextfaceplayer OldCityPokecenter1FFisherText

OldCityPokecenter1FFisherText:
	text "I caught a strange"
	line "fish #MON with"
	cont "wings!"
	done

OldCityPokecenter1F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  3,  7, OLD_CITY, 12
	warp_event  4,  7, OLD_CITY, 12
	warp_event  0,  7, NIHON_POKECENTER_2F, 1

	def_coord_events

	def_bg_events

	def_object_events
	object_event  5,  1, SPRITE_NURSE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, OldCityPokecenter1FNurseScript, -1
	object_event 13,  3, SPRITE_FISHER, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 0, 1, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, OldCityPokecenter1FFisherScript, -1
	object_event  1,  4, SPRITE_COOLTRAINER_F, SPRITEMOVEDATA_WANDER, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, OldCityPokecenter1FCoolTrainerFScript, -1
	object_event  7,  5, SPRITE_ROCKET, SPRITEMOVEDATA_STANDING_DOWN, 1, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, OldCityPokecenter1FRocketGruntScript, -1
