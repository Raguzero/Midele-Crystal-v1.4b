	const_def 2 ; object constants
	const SILVERCAVEROOM2_POKE_BALL1
	const SILVERCAVEROOM2_POKE_BALL2
	const SILVERCAVEROOM2_POKE_BALL3
	const SILVERCAVEROOM2_ZZZ

SilverCaveRoom2_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks

Zzz3Battle:
	playmusic MUSIC_YOUNGSTER_ENCOUNTER
	opentext
	writetext ScholarZzz3SeenText
	waitbutton
	closetext
	winlosstext ScholarZzz3BeatenText, ScholarZzz3LossText
	setlasttalked SILVERCAVEROOM2_ZZZ
	loadtrainer SCHOOLBOY, Zzz3
	startbattle
	dontrestartmapmusic
	reloadmapafterbattle
	jump .FinishZzzBattle3

.FinishZzzBattle3:
	opentext
	writetext ScholarZzz3AfterBattleText
	waitbutton
	closetext
	applymovement PLAYER, Prota
	applymovement SILVERCAVEROOM2_ZZZ, Zzz3MovementAfter
	disappear SILVERCAVEROOM2_ZZZ
	setscene SCENE_FINISHED
	setevent EVENT_BEAT_ZZZ3
	playmapmusic
	end

ScholarZzz3SeenText:
    ntag "Zzz"
	text "Asi que eres"
	line "<PLAYER>!"
	cont "He conseguido" 
	cont "todas las medallas"
	cont "de KANTO y me han"
	cont "dado permiso para"
	cont "entrar aqui."
	
	para "He oido rumores de"
	line "que un tal RED"
	cont "esta aqui."
	cont "Sera mi sensei"
	cont "RED KROW?"
	
	para "Pero no he tenido"
	line "suerte, maldita"
	cont "sea!!"
	cont "Donde estas"
	cont "sensei!"
	
	para "Y tu... que sepas"
	line "que he entrenado" 
	cont "todo el viaje y"
    cont "pienso vencerte"
	cont "ahora mismo."
	
	para "Vamos! Pelea!"
	line "Vamos!"
	cont "Que pasa?" 
	cont "quiero luchar!!"
	cont "Pero es que"
	cont "nadie lucha?"
	
	para "Sois todos unos"
	line "cobardes!"
	cont "eh eh eh eh!!"
	cont "Pelea! Pelea!"
	cont "Pelea!"
	done

ScholarZzz3BeatenText:
	text "Por que siempre"
	line "pierdo?"
	cont "Si soy el mejor"
	cont "entrenador..."
	done

ScholarZzz3LossText:
	text "jajajaja!"
	line "valiente pringao"
	done

ScholarZzz3AfterBattleText:
    ntag "Zzz"
	text "Donde estas sensei"
	line "(a)RED KROW"
	cont "(a)RED KROW"
	cont "Te estoy"
	cont "mencionando"
	para "(a)RED KROW"
	
	para "Me vuelvo a"
	line "a casa."
	cont "Adios"
	done	

Prota:
	step DOWN
	step RIGHT
	turn_head LEFT
	step_end

Zzz3MovementAfter:
	step DOWN
	step DOWN
	step DOWN
	step DOWN
	step DOWN
	step DOWN
	step_end

SilverCaveRoom2Calcium:
	itemball CALCIUM

SilverCaveRoom2UltraBall:
	itemball ULTRA_BALL

SilverCaveRoom2PPUp:
	itemball PP_UP

SilverCaveRoom2HiddenMaxPotion:
	hiddenitem MAX_POTION, EVENT_SILVER_CAVE_ROOM_2_HIDDEN_MAX_POTION

SilverCaveRoom2_MapEvents:
	db 0, 0 ; filler

	db 4 ; warp events
	warp_event 17, 31, SILVER_CAVE_ROOM_1, 2
	warp_event 11,  5, SILVER_CAVE_ROOM_3, 1
	warp_event 13, 21, SILVER_CAVE_ITEM_ROOMS, 1
	warp_event 23,  3, SILVER_CAVE_ITEM_ROOMS, 2

	db 0 ; coord events

	db 1 ; bg events
	bg_event 14, 31, BGEVENT_ITEM, SilverCaveRoom2HiddenMaxPotion

	db 4 ; object events
	object_event 24, 10, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, SilverCaveRoom2Calcium, EVENT_SILVER_CAVE_ROOM_2_CALCIUM
	object_event 22, 24, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, SilverCaveRoom2UltraBall, EVENT_SILVER_CAVE_ROOM_2_ULTRA_BALL
	object_event  4, 20, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, SilverCaveRoom2PPUp, EVENT_SILVER_CAVE_ROOM_2_PP_UP
	object_event 19, 22, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 3, Zzz3Battle, EVENT_BEAT_ZZZ3
