	const_def 2 ; object constants
	const ROCKTUNNEL1F_POKE_BALL1
	const ROCKTUNNEL1F_POKE_BALL2
	const ROCKTUNNEL1F_POKEMANIAC1

RockTunnel1F_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks

RockTunnel1FElixer:
	itemball ELIXER

RockTunnel1FTMSteelWing:
	itemball POLKADOT_BOW

RockTunnel1FHiddenXAccuracy:
	hiddenitem X_ACCURACY, EVENT_ROCK_TUNNEL_1F_HIDDEN_X_ACCURACY

RockTunnel1FHiddenXDefend:
	hiddenitem X_DEFEND, EVENT_ROCK_TUNNEL_1F_HIDDEN_X_DEFEND

TrainerPokemaniacJzombie:
	trainer POKEMANIAC, JZOMBIE, EVENT_14, PokemaniacJzombieSeenText, PokemaniacJzombieBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext PokemaniacJzombieAfterBattleText
	waitbutton
	closetext
	end
	
PokemaniacJzombieSeenText:
    text "[Teoria]"
	line "El proximo juego"
    cont "de Pokemon tendra"
	cont "KALOS SUR como"
	para "region!"
	
	para "No te rias de mi"
	line "teoria, o te juro" 
	cont "que tu familia te" 
	cont "vera en tu..." 
	cont "funeral." 
	cont "Se donde vives,"
	cont "vives en JOHTO."
    done

PokemaniacJzombieBeatenText:
    text "Mi teoria aun"
	line "es valida."
    done

PokemaniacJzombieAfterBattleText:
    text "Si, habra KALOS"
	line "SUR porque mi"
	cont ":censured:"
    cont "lo pide."
    done

TrainerScientistProgamer:
	trainer SCIENTIST, PROGAMER, EVENT_BEAT_TRAINER3, ScientistProgamerSeenText, ScientistProgamerBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext ScientistProgamerAfterBattleText
	waitbutton
	closetext
	end
	
ScientistProgamerSeenText:
    text "Aymi zorry"
	line "Pero i don"
	para "speak englis."
	
	para "No se si sabes"
	line "que es un borrego," 
	cont "pero es alguien" 
	cont "que le cree todo"
	cont "al nuevo orden"
	para "mundial!"
	
	para "El nuevo orden"
	line "nos esta obligando"
	cont "a comer productos"
	cont "transgenicos"
	cont "para controlarnos"
	cont "mentalmente, y asi"
	cont "seamos todos suyos"
	cont "a su completa"
	para "disposicion"
	
	para "es lo que eres:" 
	line "un borrego del"
	cont "sistema"
	done

ScientistProgamerBeatenText:
    text "Tu no lo"
	line "entiendes!"
	cont "No importa que me"
	cont "ganes. Seguiras"
	cont "siendo un borrego"
	cont "que nunca vera"
	cont "la luz."
    done

ScientistProgamerAfterBattleText:
	text "No necesito"
	line "fuentes,"
	cont "debatir con"
	cont "borregos es lo"
	cont "mismo que perder"
	cont "el tiempo, todas"
	cont "las fuentes estan"
	para "trucadas."
	
	para "El borreguismo..."
	line "de los borregos."
	cont "Ese mal de nuestra"
	para "sociedad actual."
	
	para "Tu y todos"
	line "vosotros estais"
	cont "equivocados!"
	cont "Pero no temais, yo"
	cont "os llevare a la"
	cont "luz, estimados"
	cont "borregos mios."
    done		

TrainerSageVladiland:
	trainer SAGE, VLADILAND, EVENT_BEAT_TRAINER4, SageVladilandSeenText, SageVladilandBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext SageVladilandAfterBattleText
	waitbutton
	closetext
	end
	
SageVladilandSeenText:
    text "Hola monada!"
	line "Cual es tu edad?" 
	cont "Puedes pasarme"
	cont "tu foto o tu"
    para "feisbu?"	
	
	para "No...? Ok..."
	line "Hey, eres gay?"
	cont "Si no respondes,"
	cont "preparate para"
	cont "sufrir."
	done

SageVladilandBeatenText:
    text "My little"
	line "children,"
	cont "my precious"
	cont "little"
	cont "children!!"
    done

SageVladilandAfterBattleText:
    text "Es que aqui nadie"
	line "piensa en los"
	cont "ninos?"
    done

RockTunnel1F_MapEvents:
	db 0, 0 ; filler

	db 6 ; warp events
	warp_event 15,  3, ROUTE_9, 1
	warp_event 11, 25, ROUTE_10_SOUTH, 1
	warp_event  5,  3, ROCK_TUNNEL_B1F, 3
	warp_event 15,  9, ROCK_TUNNEL_B1F, 2
	warp_event 27,  3, ROCK_TUNNEL_B1F, 4
	warp_event 27, 13, ROCK_TUNNEL_B1F, 1

	db 0 ; coord events

	db 2 ; bg events
	bg_event 24,  4, BGEVENT_ITEM, RockTunnel1FHiddenXAccuracy
	bg_event 21, 15, BGEVENT_ITEM, RockTunnel1FHiddenXDefend

	db 5 ; object events
	object_event  4, 18, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, RockTunnel1FElixer, EVENT_ROCK_TUNNEL_1F_ELIXER
	object_event 10, 15, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, RockTunnel1FTMSteelWing, EVENT_ROCK_TUNNEL_1F_TM_STEEL_WING
	object_event  24, 6, SPRITE_SUPER_NERD, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 4, TrainerPokemaniacJzombie, -1
	object_event  19, 3, SPRITE_SCIENTIST, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_TRAINER, 4, TrainerScientistProgamer, -1
	object_event  13, 9, SPRITE_SAGE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 4, TrainerSageVladiland, -1
