	const_def 2 ; object constants
	const SILVERCAVEROOM1_POKE_BALL1
	const SILVERCAVEROOM1_POKE_BALL2
	const SILVERCAVEROOM1_POKE_BALL3
	const SILVERCAVEROOM1_POKE_BALL4
	const SILVERCAVEROOM1_AVADER

SilverCaveRoom1_MapScripts:
	db 0 ; scene scripts

	db 1 ; callbacks
	callback MAPCALLBACK_OBJECTS, .SetAvader2

.SetAvader2:
	checkevent EVENT_18
	iftrue .AppearAvader2
	jump .DisappearAvader2
.AppearAvader2
	appear SILVERCAVEROOM1_AVADER
	return
.DisappearAvader2
	disappear SILVERCAVEROOM1_AVADER
	return

TrainerAvader2:
	trainer SCIENTIST, AVADER, EVENT_19, AvaderSeenText2, AvaderBeatenText2, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext AvaderAfterBattleText2
	waitbutton
	closetext
	end

AvaderSeenText2:
    ntag "A.VADER"
    text "Ja ja ja!"
	line "Yo soy"
	para "omnipresente."
    
	para "Hola de nuevo"
	line "<PLAYER>!"
	
	para "Como deberias"
	line "recordar..."

    para "Yo soy el"
	line "MASTERMIND"
    cont "detras de los"
	cont "crimenes del"
	para "TEAM ROCKET."

    line "Bueno, derrotame"
    cont "y te lo contare"
	cont "de nuevo."
    done

AvaderBeatenText2:
    text "Eres un verdadero"
	line "descendiente del"
	cont "REY MICOLO."
    done

AvaderAfterBattleText2:
	ntag "A.VADER"
    text "Yo manipule a"
	line "GIOVANNI para"
	cont "crear el"
	para "TEAM ROCKET."

    para "Con el dinero de"
	line "sus crimenes, pude"
    cont "llevar a cabo mis" 
	para "experimentos."

    para "Yo queria crear"
	line "la forma de vida"
	cont "definitiva:"
    para "EL MICOLOL!"

    para "Pero la mayoria de"
	line "los experimentos"
	cont "fueron un fracaso."
    cont "A estos MEWs les"
	cont "falta mucho PODER"
	cont "MIDELAR."

    para "Una de nuestras"
	line "creaciones era mas"
	cont "poderosa que el"
	para "resto."

    para "Lo llamamos..."
	line "MICOLO."
    cont "El ahora esta en"
	cont "la DAY-CARE de"
	para "GOLDENROD CITY." 

	para "Quiza puedas ir"
	line "a atraparle."
    done

SilverCaveRoom1MaxElixer:
	itemball MAX_ELIXER

SilverCaveRoom1Protein:
	itemball PROTEIN

SilverCaveRoom1EscapeRope:
	itemball ESCAPE_ROPE

SilverCaveRoom1UltraBall:
	itemball ULTRA_BALL

SilverCaveRoom1HiddenDireHit:
	hiddenitem DIRE_HIT, EVENT_SILVER_CAVE_ROOM_1_HIDDEN_DIRE_HIT

SilverCaveRoom1HiddenUltraBall:
	hiddenitem ULTRA_BALL, EVENT_SILVER_CAVE_ROOM_1_HIDDEN_ULTRA_BALL

SilverCaveRoom1_MapEvents:
	db 0, 0 ; filler

	db 2 ; warp events
	warp_event  9, 33, SILVER_CAVE_OUTSIDE, 2
	warp_event 15,  1, SILVER_CAVE_ROOM_2, 1

	db 0 ; coord events

	db 2 ; bg events
	bg_event 16, 23, BGEVENT_ITEM, SilverCaveRoom1HiddenDireHit
	bg_event 17, 12, BGEVENT_ITEM, SilverCaveRoom1HiddenUltraBall

	db 5 ; object events
	object_event  4,  9, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, SilverCaveRoom1MaxElixer, EVENT_SILVER_CAVE_ROOM_1_MAX_ELIXER
	object_event 15, 29, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, SilverCaveRoom1Protein, EVENT_SILVER_CAVE_ROOM_1_PROTEIN
	object_event  5, 30, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, SilverCaveRoom1EscapeRope, EVENT_SILVER_CAVE_ROOM_1_ESCAPE_ROPE
	object_event  7, 18, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, SilverCaveRoom1UltraBall, EVENT_SILVER_CAVE_ROOM_1_ULTRA_BALL
	object_event  7, 20, SPRITE_SCIENTIST, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 0, TrainerAvader2, EVENT_BEAT_RED
