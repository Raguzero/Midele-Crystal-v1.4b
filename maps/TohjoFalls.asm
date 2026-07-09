	const_def 2 ; object constants
	const TOHJOFALLS_POKE_BALL
	const TOHJOFALLS_ULTRAMAGIC

TohjoFalls_MapScripts:
	db 0 ; scene scripts

	db 1 ; callbacks	
	callback MAPCALLBACK_OBJECTS, .Setmagico

.Setmagico:
	checkevent EVENT_BEAT_LAVENDER
	iffalse .Appearmagico
	jump .Disappearmagico
	
.Appearmagico
	appear TOHJOFALLS_ULTRAMAGIC
	return
	
.Disappearmagico
	disappear TOHJOFALLS_ULTRAMAGIC
	return
	
TohjoFallsMoonStone:
	itemball MOON_STONE

TrainerSageUltramagic:
	trainer SAGE, ULTRAMAGIC, EVENT_BEAT_ULTRAMAGIC, SageUltraMagicSeenText, SageUltraMagicBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext SageUltraMagicAfterBattleText
	waitbutton
	closetext
	end	

SageUltraMagicSeenText:
    ntag "ULTRAMAGIC"
    text "Ey, DOOD! Conoces"
    line "a un hombre que"
    para "se llama LAVNDER?"

    para "La policia de"
	line "de JOHTO va tras"
	cont "el y se esta"
	cont "escondiendo en"
	para "alguna parte."

    para "La policia tambien"
	line "me busca, pero no"
	cont "me importa, DOOD!"
    cont "La MAFIA cuida"
    para "bien de mi."

    para "De todos modos"
    line "ahora que sabes"
	cont "mi secreto, tendre"
	cont "que matarte, DOOD."
    done

SageUltraMagicBeatenText:
    text "You are all"
    line "DOOD!"
    done

SageUltraMagicAfterBattleText:
    ntag "ULTRAMAGIC"
    text "DOOD, solo estaba"
    line "bromeando. Jaja!"
    cont "Soy una persona"
    para "normal."

    para "LAVENDR? Quien"
    line "es ese?"
    cont "Yo no co...co..."
	cont "Yo no... conozco"
	cont "a NACHO."
	cont "DOOD.........."
    done	

TohjoFalls_MapEvents:
	db 0, 0 ; filler

	db 2 ; warp events
	warp_event 13, 15, ROUTE_27, 2
	warp_event 25, 15, ROUTE_27, 3

	db 0 ; coord events

	db 0 ; bg events

	db 2 ; object events
	object_event  2,  6, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, TohjoFallsMoonStone, EVENT_TOHJO_FALLS_MOON_STONE
	object_event  11,  15, SPRITE_SAGE, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 2, TrainerSageUltramagic,  EVENT_ULTRAMAGIC_DESAPARECER
