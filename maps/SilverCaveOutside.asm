	const_def 2 ; object constants
	const SILVERCAVEOUTSIDE_PSYCHIC_T
	const SILVERCAVEOUTSIDE_GRUNTM
	const SILVERCAVEOUTSIDE_JUGGLER

SilverCaveOutside_MapScripts:
	db 0 ; scene scripts

	db 1 ; callbacks
	callback MAPCALLBACK_NEWMAP, .FlyPoint

.FlyPoint:
	setflag ENGINE_FLYPOINT_SILVER_CAVE
	return

TrainerPsychicTSantyago:
	trainer PSYCHIC_T, SANTYAGO, EVENT_BEAT_SANTYAGO, PsychicTSantiagoSeenText, PsychicTSantiagoBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext PsychicTSantiagoAfterBattleText
	waitbutton
	closetext
	end
	
PsychicTSantiagoSeenText:
	ntag "SANTYAGO"
    text "Eh! Hermosura!"
    para "Debemos luchar!"

    para "Si yo gano, seras"
    line "mi esclavo!"

    para "Pero si ganas tu,"
	line "te dare mi numero"
	cont "para que podamos"
	cont "conocernos y hacer"
	cont "cositas atrevidas."

    para "Trato?"
    done


PsychicTSantiagoBeatenText:
    text "All according"
    line "to Keikaku"
    done

PsychicTSantiagoAfterBattleText
   ntag "SANTYAGO"
   text "Felicidades!"
   line "Me has vencido!"
   
   para "Incluso con el"
   line "poder de mi CELEBI" 
   cont "no fue suficiente."
   
   para "Me refiero a que" 
   line "puedo usar a"
   cont "CELEBI para volver"
   cont "atras en el tiempo" 
   cont "y poder vencerte."

   para "Pero la forma en"
   line "que nuestros ojos"
   cont "se cruzaron me"
   cont "dice que caiste"
   cont "enamorado de mi" 
   cont ":heart: ."
   done

GruntMGhaddar:
	trainer GRUNTM, GHADDAR, EVENT_BEAT_TRAINER, GruntMGhaddarSeenText, GruntMGhaddarBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext GruntMGhaddarAfterBattleText
	waitbutton
	closetext
	end
	
GruntMGhaddarSeenText:
    ntag "GHADDAR"
    text "..."
    line "Tu no lo"
    cont "entiendes."
    
    para "He estado muerto"
    line "durante 35"
	cont "anualidades."
 
    para "Hoy es el dia"
    line "en que vivo."
    done


GruntMGhaddarBeatenText:
    text "..."
    line "Buddy..."
    done

GruntMGhaddarAfterBattleText
    ntag "GHADDAR"
    text "Yo… estoy acabado…"
    line "Se acabo..."
    cont "..."
 
    para "He hecho lo..."
    line "correcto?"
    done

JugglerUtalawea:
	trainer JUGGLER, UTALAWEA, EVENT_BEAT_TRAINER2, JugglerUtalaweaSeenText, JugglerUtalaweaBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext JugglerUtalaweaAfterBattleText
	waitbutton
	closetext
	end
	
JugglerUtalaweaSeenText:
    ntag "UTALAWEA"
    text "Jelou!"
    line "Aim not espik"
	cont "llur idiom."
    para "De todas formas,"
 
    para "no me hinchas las"
	line "pelotas."
    cont "Que reviento!"
    done

JugglerUtalaweaBeatenText:
    text "Ayyyyyyyyy!"
    line "Mis bolas!!"
    done

JugglerUtalaweaAfterBattleText
    ntag "UTALAWEA"
    text "Sabia que no era"
	line "buena idea."
    cont "Pero lo hice..."
    cont "Y ahora tengo"
	cont "las bolas"
	cont "destrozadas."
    done

TrainerSupernerdDarki:
	trainer SUPER_NERD, DARKI, EVENT_BEAT_TRAINER7, SuperNerdDarkiSeenText, SuperNerdDarkiBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext SuperNerdDarkiAfterBattleText
	waitbutton
	closetext
	end
	
SuperNerdDarkiSeenText:
    ntag "DARKI"
	text "Hey dude!"
	
	para "Sabes como"
	line "revertir la"
	cont "entropia?"
	done

SuperNerdDarkiBeatenText:
	text "Waaaarggh!"
	line "Todos estamos"
	cont "condenados!"
	done

SuperNerdDarkiAfterBattleText
    ntag "DARKI"
	text "Creo que tengo que"
    line "madurar mas para"
	cont "encontrar la"
	cont "respuesta…"
	
	para "Dejame solo!"
	done

TrainerBeautyEntropia:
	trainer BEAUTY, ENTROPIA, EVENT_BEAT_TRAINER8, BeautyEntropiaSeenText, BeautyEntropiaBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext BeautyEntropiaAfterBattleText
	waitbutton
	closetext
	end

BeautyEntropiaSeenText:
    ntag "ENTROPIA"
    text "Hello yellow!"

    para "No importa que"
    line "PKMN tengas,"
    cont "hazlo lo mejor"
    cont "que puedas, gurl."
    done

BeautyEntropiaBeatenText:
    text "Y ahora…"
    line "Sashay away!"
    done

BeautyEntropiaAfterBattleText
    ntag "ENTROPIA"
    text "La categoria es:"
    line "Como perder la"
    cont "elegancia"
    cont "extravagancia."
    
    para "Te prometo que"
    line "mi fuerza de"
    cont "voluntad va a"
    cont "incrementar con"
	cont "el tiempo."
    done

CooltrainermDenis:
	trainer COOLTRAINERM, DENYS, EVENT_12, DenisSeenText, DenisBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext DenisAfterBattleText
	waitbutton
	closetext
	end
	
DenisSeenText:
    ntag "DENYS"
    text "Hello novato!"
	line "Estos montes son"
	cont "el lugar perfecto"
	cont "para entrenar mis" 
	cont "peculiares" 
	para "habilidades." 
	
	para "Vete poniendo el"
	line "casco Anti-Hax,"
	cont "lo vas a"
	cont "necesitar"
	done

DenisBeatenText:
    text "RIP"
    done

DenisAfterBattleText
    ntag "DENYS"
    text "He perdido solo"
	line "porque"
	cont "Mega Abomasnow"
	cont "no existe en"
	para "esta Region."
	
	para "Llega a haber uno" 
	line "por aqui y te gano"
	cont "en cualquier"
	cont "categoria,"
	cont "carisma incluida."
    done

MtSilverPokecenterSign:
	jumpstd pokecentersign

MtSilverSign:
	jumptext MtSilverSignText

SilverCaveOutsideHiddenFullRestore:
	hiddenitem FULL_RESTORE, EVENT_SILVER_CAVE_OUTSIDE_HIDDEN_FULL_RESTORE

MtSilverSignText:
	text "MT.SILVER"
	done

SilverCaveOutside_MapEvents:
	db 0, 0 ; filler

	db 2 ; warp events
	warp_event 23, 19, SILVER_CAVE_POKECENTER_1F, 1
	warp_event 18, 11, SILVER_CAVE_ROOM_1, 1

	db 0 ; coord events

	db 3 ; bg events
	bg_event 24, 19, BGEVENT_READ, MtSilverPokecenterSign
	bg_event 17, 13, BGEVENT_READ, MtSilverSign
	bg_event  9, 25, BGEVENT_ITEM, SilverCaveOutsideHiddenFullRestore

	db 6 ; object events
	object_event  28, 30, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 1, TrainerPsychicTSantyago, EVENT_BEAT_RED
	object_event  18, 21, SPRITE_ROCKET, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_TRAINER, 2, GruntMGhaddar, -1
	object_event  24, 29, SPRITE_SUPER_NERD, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 4, JugglerUtalawea, -1
	object_event  28, 32, SPRITE_SUPER_NERD, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 1, TrainerSupernerdDarki, -1
	object_event  37, 33, SPRITE_LASS, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 3, TrainerBeautyEntropia, -1
	object_event  18, 24, SPRITE_COOLTRAINER_M, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_TRAINER, 4, CooltrainermDenis, -1