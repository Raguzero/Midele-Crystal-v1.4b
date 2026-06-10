	const_def 2 ; object constants
	const ROUTE14_POKEFAN_M1
	const ROUTE14_YOUNGSTER
	const ROUTE14_POKEFAN_M2
	const ROUTE14_KIM
	const ROUTE14_YOUNGSTER2
	const ROUTE14_YOUNGSTER3
	const ROUTE14_YOUNGSTER4
	const ROUTE14_TEACHER1

Route14_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks

Kim:
	faceplayer
	opentext
	trade NPC_TRADE_KIM
	waitbutton
	closetext
	end

TrainerPokefanmCarter:
	trainer POKEFANM, CARTER, EVENT_BEAT_POKEFANM_CARTER, PokefanmCarterSeenText, PokefanmCarterBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext PokefanmCarterAfterBattleText
	waitbutton
	closetext
	end

TrainerBirdKeeperRoy:
	trainer BIRD_KEEPER, ROY, EVENT_BEAT_BIRD_KEEPER_ROY, BirdKeeperRoySeenText, BirdKeeperRoyBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext BirdKeeperRoyAfterBattleText
	waitbutton
	closetext
	end

TrainerPokefanmTrevor:
	trainer POKEFANM, TREVOR, EVENT_BEAT_POKEFANM_TREVOR, PokefanmTrevorSeenText, PokefanmTrevorBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext PokefanmTrevorAfterBattleText
	waitbutton
	closetext
	end
	
TrainerSchoolBoyConnor:
	trainer SCHOOLBOY, CONNOR, EVENT_BEAT_SCHOOLBOY_CONNOR, SchoolBoyConnorSeenText, SchoolBoyConnorBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext SchoolBoyConnorAfterBattleText
	waitbutton
	closetext
	end
	
TrainerSchoolBoyTorin:
	trainer SCHOOLBOY, TORIN, EVENT_BEAT_SCHOOLBOY_TORIN, SchoolBoyTorinSeenText, SchoolBoyTorinBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext SchoolBoyTorinAfterBattleText
	waitbutton
	closetext
	end
	
TrainerSchoolBoyTravis:
	trainer SCHOOLBOY, TRAVIS, EVENT_BEAT_SCHOOLBOY_TRAVIS, SchoolBoyTravisSeenText, SchoolBoyTravisBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext SchoolBoyTravisAfterBattleText
	waitbutton
	closetext
	end
	
TrainerTeacherClarice:
	trainer TEACHER, CLARICE, EVENT_BEAT_TEACHER_CLARICE, TeacherClariceSeenText, TeacherClariceBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext TeacherClariceAfterBattleText
	waitbutton
	closetext
	end

PokefanmCarterSeenText:
	text "Let me tell you,"
	line "I had a hard time"

	para "catching my prized"
	line "#MON."
	done

PokefanmCarterBeatenText:
	text "Awaaah!"
	done

PokefanmCarterAfterBattleText:
	text "SQUIRTLE, CHARMAN-"
	line "DER and BULBASAUR…"

	para "I think that's a"
	line "well-balanced mix."
	done

BirdKeeperRoySeenText:
	text "My dream is to fly"
	line "with my beloved"
	cont "bird #MON."
	done

BirdKeeperRoyBeatenText:
	text "I can dream, but I"
	line "can't ever fly…"
	done

BirdKeeperRoyAfterBattleText:
	text "You have #MON"
	line "that know the HM"

	para "move FLY, don't"
	line "you? I envy you."
	done

PokefanmTrevorSeenText:
	text "Hi. Did you know…?"

	para "#MON get more"
	line "friendly if you"

	para "train them in a"
	line "place that they"
	cont "remember."
	done

PokefanmTrevorBeatenText:
	text "Where did I meet"
	line "this PSYDUCK?"
	done

PokefanmTrevorAfterBattleText:
	text "If only there were"
	line "an easy way to"

	para "identify where I"
	line "got my #MON…"
	done
	
SchoolBoyConnorSeenText:
	text "I can't wait to"
	line "go home and drop"
	cont "off my Bag!"
	done

SchoolBoyConnorBeatenText:
	text "I was in too much"
	line "of a hurry."
	done

SchoolBoyConnorAfterBattleText:
	text "Don't rush, and"
	line "take the road one"
	cont "step at a time."
	
	para "Great advice!"
	done

SchoolBoyTorinSeenText:
	text "It's good to put"
	line "what you learn to"
	cont "use immediately!"
	done

SchoolBoyTorinBeatenText:
	text "I see. I see."
	done

SchoolBoyTorinAfterBattleText:
	text "All right!"
	line "Next time,"
	cont "I won't make any"
	cont "mistakes!"
	done
	
SchoolBoyTravisSeenText:
	text "Do you have"
	line "after-school study"
	cont "sessions?"
	done

SchoolBoyTravisBeatenText:
	text "So strong…"
	done

SchoolBoyTravisAfterBattleText:
	text "Maybe I should"
	line "join your study"
	cont "sessions!"
	done
	
TeacherClariceSeenText:
	text "All right, let's"
	line "get this Pokémon"
	cont "battle started!"
	done

TeacherClariceBeatenText:
	text "All right!"
	line "That concludes"
	cont "today's battle."
	done

TeacherClariceAfterBattleText:
	text "Don't relax just"
	line "'cause you won."

	para "Once you get home,"
	line "you should do a"
	cont "full review!"
	done

Route14_MapEvents:
	db 0, 0 ; filler

	db 0 ; warp events

	db 0 ; coord events

	db 0 ; bg events

	db 8 ; object events
	object_event 11, 15, SPRITE_POKEFAN_M, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 3, TrainerPokefanmCarter, -1
	object_event 11, 27, SPRITE_YOUNGSTER, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 3, TrainerBirdKeeperRoy, -1
	object_event  6, 11, SPRITE_POKEFAN_M, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 3, TrainerPokefanmTrevor, -1
	object_event  7,  5, SPRITE_TEACHER, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 1, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 4, Kim, -1
	object_event 11,  7, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 3, TrainerSchoolBoyConnor, -1
	object_event 11,  9, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 3, TrainerSchoolBoyTorin, -1
	object_event 11, 11, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 4, TrainerSchoolBoyTravis, -1
	object_event 14,  8, SPRITE_TEACHER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 3, TrainerTeacherClarice, -1
