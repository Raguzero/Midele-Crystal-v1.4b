	const_def 2 ; object constants
	const FUCHSIACITY_YOUNGSTER
	const FUCHSIACITY_POKEFAN_M
	const FUCHSIACITY_TEACHER
	const FUCHSIACITY_FRUIT_TREE
	const FUCHSIACITY_ZZZ

FuchsiaCity_MapScripts:
	db 0 ; scene scripts

	db 1 ; callbacks
	callback MAPCALLBACK_NEWMAP, .FlyPoint

.FlyPoint:
	setflag ENGINE_FLYPOINT_FUCHSIA
	return

Zzz2Battle:
	playmusic MUSIC_YOUNGSTER_ENCOUNTER
	opentext
	writetext ScholarZzz2SeenText
	waitbutton
	closetext
	winlosstext ScholarZzz2BeatenText, ScholarZzz2LossText
	setlasttalked FUCHSIACITY_ZZZ
	loadtrainer SCHOOLBOY, Zzz2
	startbattle
	dontrestartmapmusic
	reloadmapafterbattle
	jump .FinishZzzBattle2

.FinishZzzBattle2:
	opentext
	writetext ScholarZzz2AfterBattleText
	waitbutton
	closetext
	applymovement FUCHSIACITY_ZZZ, Zzz2MovementAfter
	disappear FUCHSIACITY_ZZZ
	setscene SCENE_FINISHED
	setevent EVENT_BEAT_ZZZ2
	playmapmusic
	end

ScholarZzz2SeenText:
    ntag "Zzz"
	text "Ah si! Tu eres"
	line "<PLAYER> no?"
	cont "Me has pillado"
	cont "pensando una"
	cont "estrategia para"
	cont "vencer a JANINE."
	
	para "Que pasa? No te"
	line "acuerdas de mi?"
	cont "Soy Zzz, el mejor"
	cont "entrenador que"
	cont "habra jamas."
	
	para "Sigo buscando"
	line "a mi sensei"
	cont "RED KROW."
	cont "Lo has visto?"
	cont "No? Vaya..."
	cont "Donde estara?"
	cont "Donde estas"
	cont "sensei!"
	
	para "Pero ya que estas"
	line "frente a mi..."
	cont "Por que no"
	cont "vengarme de ti?"
	
	para "Siiii! Es la hora"
	line "de vengarme por"
	cont "derrotarme antes."
	
	para "Vamos! Lucha"
	line "cobarde!"
	cont "Quiero luchar!!"
	cont "Pero es que"
	cont "nadie lucha?"
	
	para "Sois todos unos"
	line "cobardes!"
	cont "eh eh eh eh!!"
	cont "Pelea! Pelea!"
	cont "Pelea!"
	done

ScholarZzz2BeatenText:
	text "Otra vez?"
	line "Pero por que?"
	cont "Por que no puedo"
	cont "vencerte?"
	done

ScholarZzz2LossText:
	text "jajajaja!"
	line "valiente pringao"
	done

ScholarZzz2AfterBattleText:
    ntag "Zzz"
    text "Donde estas"
	line "sensei!"
	
	para "(a)RED KROW"
	line "(a)RED KROW"

	para "Te estoy"
	line "mencionando"
	cont "(a)RED KROW"
	
	para "En cuanto a ti."
	line "Nos volveremos"
	cont "a encontrar"
	cont "y me vengare!"
	done

Zzz2MovementAfter:
	step UP
	step_end

FuchsiaCityYoungster:
	jumptextfaceplayer FuchsiaCityYoungsterText

FuchsiaCityPokefanM:
	jumptextfaceplayer FuchsiaCityPokefanMText

FuchsiaCityTeacher:
	jumptextfaceplayer FuchsiaCityTeacherText

FuchsiaCityGuardSafari:
	jumptextfaceplayer FuchsiaCityGuardSafariText

FuchsiaCitySign:
	jumptext FuchsiaCitySignText

FuchsiaGymSign:
	jumptext FuchsiaGymSignText

SafariZoneOfficeSign:
	jumptext SafariZoneOfficeSignText

WardensHomeSign:
	jumptext WardensHomeSignText

SafariZoneClosedSign:
	jumptext SafariZoneClosedSignText

NoLitteringSign:
	jumptext NoLitteringSignText

FuchsiaCityPokecenterSign:
	jumpstd pokecentersign

FuchsiaCityMartSign:
	jumpstd martsign

FuchsiaCityFruitTree:
	fruittree FRUITTREE_FUCHSIA_CITY

FuchsiaCityYoungsterText:
	text "One of the ELITE"
	line "FOUR used to be"

	para "the LEADER of"
	line "FUCHSIA's GYM."
	done

FuchsiaCityPokefanMText:
	text "KOGA's daughter"
	line "succeeded him as"

	para "the GYM LEADER"
	line "after he joined"
	cont "the ELITE FOUR."
	done

FuchsiaCityTeacherText:
	text "The SAFARI ZONE is"
	line "closed… It's sad,"

	para "considering it's"
	line "FUCHSIA's main"
	cont "attraction."
	done

FuchsiaCityGuardSafariText:
	text "Only you can"
	line "pass if you have"
	cont "all KANTO badges."
	done

FuchsiaCitySignText:
	text "FUCHSIA CITY"

	para "Behold! It's"
	line "Passion Pink!"
	done

FuchsiaGymSignText:
	text "FUCHSIA CITY"
	line "#MON GYM"
	cont "LEADER: JANINE"

	para "The Poisonous"
	line "Ninja Master"
	done

SafariZoneOfficeSignText:
	text "There's a notice"
	line "here…"

	para "SAFARI ZONE OFFICE"
	line "is closed until"
	cont "further notice."
	done

WardensHomeSignText:
	text "SAFARI ZONE"
	line "WARDEN'S HOME"
	done

SafariZoneClosedSignText:
	text "The WARDEN is"
	line "traveling abroad."

	para "Therefore, the"
	line "SAFARI ZONE is"
	cont "closed."
	done

NoLitteringSignText:
	text "No littering."

	para "Please take your"
	line "waste with you."
	done

FuchsiaCity_MapEvents:
	db 0, 0 ; filler

	db 11 ; warp events
	warp_event  5, 13, FUCHSIA_MART, 2
	warp_event 22, 13, SAFARI_ZONE_MAIN_OFFICE, 1
	warp_event  8, 27, FUCHSIA_GYM, 1
	warp_event 11, 27, BILLS_BROTHERS_HOUSE, 1
	warp_event 19, 27, FUCHSIA_POKECENTER_1F, 1
	warp_event 27, 27, SAFARI_ZONE_WARDENS_HOME, 1
	warp_event 18,  3, SAFARI_ZONE_FUCHSIA_GATE_BETA, 3 ; inaccessible
	warp_event 37, 22, ROUTE_15_FUCHSIA_GATE, 1
	warp_event 37, 23, ROUTE_15_FUCHSIA_GATE, 2
	warp_event  7, 35, ROUTE_19_FUCHSIA_GATE, 1
	warp_event  8, 35, ROUTE_19_FUCHSIA_GATE, 2

	db 0 ; coord events

	db 8 ; bg events
	bg_event 21, 15, BGEVENT_READ, FuchsiaCitySign
	bg_event  5, 29, BGEVENT_READ, FuchsiaGymSign
	bg_event 25, 15, BGEVENT_READ, SafariZoneOfficeSign
	bg_event 27, 29, BGEVENT_READ, WardensHomeSign
	bg_event 17,  5, BGEVENT_READ, SafariZoneClosedSign
	bg_event 13, 15, BGEVENT_READ, NoLitteringSign
	bg_event 20, 27, BGEVENT_READ, FuchsiaCityPokecenterSign
	bg_event  6, 13, BGEVENT_READ, FuchsiaCityMartSign

	db 6 ; object events
	object_event 23, 18, SPRITE_YOUNGSTER, SPRITEMOVEDATA_WANDER, 1, 1, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, FuchsiaCityYoungster, -1
	object_event 13,  8, SPRITE_POKEFAN_M, SPRITEMOVEDATA_WANDER, 1, 1, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, FuchsiaCityPokefanM, -1
	object_event 16, 14, SPRITE_TEACHER, SPRITEMOVEDATA_WANDER, 1, 1, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, FuchsiaCityTeacher, -1
	object_event  8,  1, SPRITE_FRUIT_TREE, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, FuchsiaCityFruitTree, -1
	object_event 8, 28, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 2, Zzz2Battle, EVENT_BEAT_ZZZ2
	object_event 18,  4, SPRITE_POKEFAN_M, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, FuchsiaCityGuardSafari, EVENT_BEAT_BLUE

