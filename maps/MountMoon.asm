	const_def 2 ; object constants
	const MOUNTMOON_SILVER
	const MOUNTMOON_MEW

MountMoon_MapScripts:
	db 2 ; scene scripts
	scene_script .RivalEncounter ; SCENE_DEFAULT
	scene_script .DummyScene ; SCENE_FINISHED

	db 1 ; callbacks
	callback MAPCALLBACK_OBJECTS, .Mew

.RivalEncounter:
	priorityjump .RivalBattle
	end

.DummyScene:
	end	

.RivalBattle:
	turnobject PLAYER, RIGHT
	showemote EMOTE_SHOCK, PLAYER, 15
	special FadeOutMusic
	pause 15
	applymovement MOUNTMOON_SILVER, MountMoonSilverMovementBefore
	playmusic MUSIC_RIVAL_ENCOUNTER
	opentext
	writetext MountMoonSilverTextBefore
	waitbutton
	closetext
	checkevent EVENT_GOT_TOTODILE_FROM_ELM
	iftrue .Totodile
	checkevent EVENT_GOT_CHIKORITA_FROM_ELM
	iftrue .Chikorita
	winlosstext MountMoonSilverTextWin, MountMoonSilverTextLoss
	setlasttalked MOUNTMOON_SILVER
	loadtrainer RIVAL2, RIVAL2_1_TOTODILE
	startbattle
	dontrestartmapmusic
	reloadmapafterbattle
	jump .FinishBattle

.Totodile:
	winlosstext MountMoonSilverTextWin, MountMoonSilverTextLoss
	setlasttalked MOUNTMOON_SILVER
	loadtrainer RIVAL2, RIVAL2_1_CHIKORITA
	startbattle
	dontrestartmapmusic
	reloadmapafterbattle
	jump .FinishBattle

.Chikorita:
	winlosstext MountMoonSilverTextWin, MountMoonSilverTextLoss
	setlasttalked MOUNTMOON_SILVER
	loadtrainer RIVAL2, RIVAL2_1_CYNDAQUIL
	startbattle
	dontrestartmapmusic
	reloadmapafterbattle
	jump .FinishBattle

.FinishBattle:
	playmusic MUSIC_RIVAL_AFTER
	opentext
	writetext MountMoonSilverTextAfter
	waitbutton
	closetext
	applymovement MOUNTMOON_SILVER, MountMoonSilverMovementAfter
	disappear MOUNTMOON_SILVER
	setscene SCENE_FINISHED
	setevent EVENT_BEAT_RIVAL_IN_MT_MOON
	playmapmusic
	end

.Mew:
    checkevent EVENT_FOUGHT_MEW
    iftrue .NoAppear
    checkcode VAR_BADGES
    if_not_equal 16, .NoAppear
    jump .Appear

.Appear:
	appear MOUNTMOON_MEW
	return

.NoAppear:
	disappear MOUNTMOON_MEW
	return

Mew:
	faceplayer
	opentext
	writetext MewText
	cry MEW
	pause 15
	closetext
	setevent EVENT_FOUGHT_MEW
	writecode VAR_BATTLETYPE, BATTLETYPE_SUICUNE
	loadwildmon MEW, 30
	startbattle
	disappear MOUNTMOON_MEW
	reloadmapafterbattle
	end

MewText:
	text "Mew!"
	done

TrainerPsychicHypeantonio:
	trainer PSYCHIC_T, HYPEANTO, EVENT_BEAT_TRAINER5, Psychic_THypeantoSeenText, Psychic_THypeantoBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext Psychic_THypeantoAfterBattleText
	waitbutton
	closetext
	end
	
Psychic_THypeantoSeenText:
	ntag "HYPEANTO"
    text "Estoy intentando"
	line "encontrar el"
	cont "origen del POKéMON" 
	cont "legendario"
	cont "ZYGARDE."
	
	para "Tal vez esta"
	line "region tenga"
	cont "algunas pistas."
	
	para "Ahora mismo mi"
	line "HYPE esta"
	cont "subiendo por"
	cont "encima de 9000!"

	para "Puedes sentirlo?" 
	line "Puedes sentir el"
	cont "maximo poder del" 
	cont "HYPE?"
	done

Psychic_THypeantoBeatenText:
    text "Tal vez deberia"
	line "hacer una [Teoria]"
	cont "sobre esta"
	cont "batalla..."
    done

Psychic_THypeantoAfterBattleText
	ntag "HYPEANTO"
    text "Creo que este"
	line "lugar podria"
	cont "estar conectado"
	cont "con TERMINUS CAVE"
	cont "de KALOS."
	
	para "Ambas son cuevas"
	line "despues de todo!"
	done

MountMoonSilverMovementBefore:
	step LEFT
	step LEFT
	step LEFT
	step_end

MountMoonSilverMovementAfter:
	step RIGHT
	step RIGHT
	step DOWN
	step DOWN
	step DOWN
	step DOWN
	step DOWN
	step_end

MountMoonSilverTextBefore:
	text "<……> <……> <……>"

	para "It's been a while,"
	line "<PLAYER>."

	para "…Since I lost to"
	line "you, I thought"

	para "about what I was"
	line "lacking with my"
	cont "#MON…"

	para "And we came up"
	line "with an answer."

	para "<PLAYER>, now we'll"
	line "show you!"
	done

MountMoonSilverTextWin:
	text "<……> <……> <……>"

	para "I thought I raised"
	line "my #MON to be"

	para "the best they"
	line "could be…"

	para "…But it still "
	line "wasn't enough…"
	done

MountMoonSilverTextAfter:
	text "<……> <……> <……>"

	para "…You won, fair"
	line "and square."

	para "I admit it. But"
	line "this isn't the"
	cont "end."

	para "I'm going to be"
	line "the greatest #-"
	cont "MON trainer ever."

	para "Because these guys"
	line "are behind me."

	para "…Listen, <PLAYER>."

	para "One of these days"
	line "I'm going to prove"

	para "how good I am by"
	line "beating you."
	done

MountMoonSilverTextLoss:
	text "<……> <……> <……>"

	para "I've repaid my"
	line "debt to you."

	para "With my #MON,"
	line "I'm going to beat"

	para "the CHAMPION and"
	line "become the world's"
	cont "greatest trainer."
	done

MountMoon_MapEvents:
	db 0, 0 ; filler

	db 8 ; warp events
	warp_event  3,  3, ROUTE_3, 1
	warp_event 15, 15, ROUTE_4, 1
	warp_event 13,  3, MOUNT_MOON, 7
	warp_event 15, 11, MOUNT_MOON, 8
	warp_event 25,  5, MOUNT_MOON_SQUARE, 1
	warp_event 25, 15, MOUNT_MOON_SQUARE, 2
	warp_event 25,  3, MOUNT_MOON, 3
	warp_event 25, 13, MOUNT_MOON, 4

	db 0 ; coord events

	db 0 ; bg events

	db 3 ; object events
	object_event  7,  3, SPRITE_SILVER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, EVENT_MT_MOON_RIVAL
	object_event 12, 12, SPRITE_MEW, SPRITEMOVEDATA_POKEMON, 0, 1, -1, -1, PAL_OW_SILVER,PERSONTYPE_SCRIPT, 0, Mew, EVENT_MEW
	object_event  4, 9, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_TRAINER, 1, TrainerPsychicHypeantonio, -1
