	const_def 2 ; object constants
	const ROUTE28_SUPERNERD1
	const ROUTE28_COOLTRAINERM1
	const ROUTE28_SWIMMERGUY1
	const ROUTE28_CAMPERM1
	const ROUTE28_COOLTRAINERM2
	const ROUTE28_CAMPERM2
	const ROUTE28_JUGGLER1

Route28_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks

TrainerSupernerdGoldy:
	trainer SUPER_NERD, GOLDY, EVENT_BEAT_GOLDY, SupernerdGoldySeenText, SupernerdGoldyBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext SupernerdGoldyAfterBattleText
	waitbutton
	closetext
	end
	
SupernerdGoldySeenText:
    text "*snif* *snif*"
    line "Ese olor..."
 
    para "No eres de la"
    line "region KANTO,"
    cont "cierto?"
 
    para "Bueno, un combate"
    line "es un combate,"
    cont "asi que preparate"
    cont "para perder!"
    done

SupernerdGoldyBeatenText:
    text "W-W-W-WHAAAAT!?"
    done

SupernerdGoldyAfterBattleText:
    text "Como he perdido"
    line "asi de facil?"

    para "Oh... Asi que eres"
    line "un CHAMPION..."
    cont "Si lo hubiese"
    para "sabido..."

    para "No, no estoy"
    line "pensando en huir"
	cont "ni nada parecido."

    para "Por que me sigues"
    line "mirando!?"
    done

TrainerCooltrainermRagu:
	trainer COOLTRAINERM, RAGU, EVENT_BEAT_RAGU, CooltrainermRaguSeenText, CooltrainermRaguBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext CooltrainermRaguAfterBattleText
	waitbutton
	closetext
	end

CooltrainermRaguSeenText:
    text "La gente me"
	line "conoce como..."
    para "Master Hax!"

    para "Todos me temen"
	line "por mi Hax!"
	cont "Con un solo"
	cont "ataque puedo"
	cont "congelarte,"
	cont "quemarte,"
	cont "paralizarte,"
	cont "hacer retroceder,"
	cont "y propinarte un" 
	para "GOLPE CRITICO!!"

	para "Estas preparado" 
	line "para ser Haxeado?"
	done

CooltrainermRaguBeatenText:
    text "NOOOOO!!!"
    done

CooltrainermRaguAfterBattleText:
    text "Tienes algun"
	line "PIKACHU para poder"
	cont "aplastarlo con mis"
	cont "preciosas manos?"
    done

TrainerSwimmermPacoBeer:
	trainer SWIMMERM, PACOBEER, EVENT_BEAT_PACOCHEF, SwimmermPacoBeerSeenText, SwimmermPacoBeerBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext SwimmermPacoBeerAfterBattleText
	waitbutton
	closetext
	end
	
SwimmermPacoBeerSeenText:
    text "Gluurgrggh..."  
	line "Mi nombre es..."     
    para "uh... PACOBEER!"  

	para "Dicen que deberia"
	line "cuidarme." 

	para "...no lo creo"   
	line "Y, tu..."

	para "Quieres algo de"
	line "hierba?"
	
	para "YO QUIERO WHISKEY"
	line "CARALLO."
    done

SwimmermPacoBeerBeatenText:
    text "MELKOR DESBANEA"
	line "A LAVNDER!!"
	cont "Bueno..."
	cont "Ire a tomar otros"
	cont "69 litros"
    done

SwimmermPacoBeerAfterBattleText:
    text "Sabes..."  
	line "Me dijeron que..."
    cont "nunca llegaria a"
	para "nada..."
    
	para "Tenian razon."
	line "Mucha."  
    cont "Pero el alcohol en"
	cont "alta mar es la p.."   
	cont "Mejor me callo que"
	para "RAGU observa."     
    
	para "Espera un momento."      
	line "Saluda a"
	cont "la papelera"
	cont "de mi parte..."
	cont "Yo voy a vomitar."     
    done

TrainerCamperSpolker:
	trainer CAMPER, SPOLKER, EVENT_BEAT_SPOLKER, CamperSpolkerSeenText, CamperSpolkerBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext CamperSpolkerAfterBattleText
	waitbutton
	closetext
	end
	
CamperSpolkerSeenText:
    text "Soy SPOLKER, pero"
    line "si me destilas"
    cont "algunas SITRUS"
	cont "BERRIES, puedo"
	cont "convertirme en"
    cont "en SOPEN!!!"
    
	para "Tu! DAME ALCOHOL!"
    line "Hip!"
    done

CamperSpolkerBeatenText:
    text "Ouch! Mi alcohol.."
    done

CamperSpolkerAfterBattleText:
    text "Ahora no tengo"
    line "dinero para algo"
    cont "de ginebra o"
	para "vodka."
    
	para "Tendre que..."
	line "mantenerme sobrio."
	cont "Well, voy a buscar"
    cont "a la Cuarta Chica."
    cont "Deseame suerte!"
    done

TrainerCooltrainermShelea:
	trainer COOLTRAINERM, SHELEA, EVENT_BEAT_SHELEA, CooltrainermSheleaSeenText, CooltrainermSheleaBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext CooltrainermSheleaAfterBattleText
	waitbutton
	closetext
	end

CooltrainermSheleaSeenText:
    text "Soy Shelea,"
    line "Alpha Shelea"
    para "Tu sabes como"
	line "empieza una"
	cont "buena batalla?"

    para "Ambos trainers" 
	line "se miran a los"
    cont "ojos y dan lo"
	cont "mejor que pueden."

    para "Pero una batalla"
	line "empieza con..."
    
	para "RAH RAH AH-AH-AH!"
    line "RO MAH RO MAH-MAH!"
    done

CooltrainermSheleaBeatenText:
    text "Opssss!"
    line "I've lost my wig"
    done

CooltrainermSheleaAfterBattleText:
    text "Okay guuuurl"
    line "Quiero la"
	para "revancha."
    
	para "Eres criminal"
    line "como tantos"
	cont "otros chicos."
    
	para "Alejandro,"
	line "Fernando,"
	
	para "Roberto..."
    line "Walk, walk"
    
	para "fashion baby"
    line "See u later!"
	done
	
TrainerCamperExi:
	trainer CAMPER, EXI, EVENT_BEAT_EXI, CamperExiSeenText, CamperExiBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext CamperExiAfterBattleText
	waitbutton
	closetext
	end
	
CamperExiSeenText:
    text "Es a mi a quien"
	line "estas mirando?"

    para "Formo parte de"
	line "un escuadron de"
	cont "rescate Pokémon."
	
    para "Espero que te"
	line "unas si te"
	cont "apetece."

    para "Cuando ambos"
	line "trainers se miran"
	cont "cara a cara"
    cont "mostrando su gran"
	cont "determinacion, la"
    cont "batalla empieza!"
    
	para "Muestrame que"
	line "tienes!"
	
    para "No hagas el"
	line "ridiculo."
    done

CamperExiBeatenText:
    text "Lo hicimos lo" 
	line "mejor posible."
    cont "Espero verte"
	para "de nuevo."
    done

CamperExiAfterBattleText:
    text "Ok. Quieres"
	line "otro combate?"
    para "Tu eres..."
	
    para "Uhm, olvida lo"
	line "que dije, solo"
	cont "ignoralo."
    
	para "Pruebame si me"
	line "equivoco."
    cont "Si te reto,"
	
	para "te reto el"
	line "doble."
	
    para "Preparate cuando"
    line "estes mas" 
	cont "preparado que"
	cont "yo."
	
	para "Ugh. Espero que"
    line "te unas a los"
	para "rangers,"
	line "podria guiarte"

	para "por el mejor"
	line "camino."
    done

TrainerJugglerMerum:
	trainer JUGGLER, MERUM, EVENT_BEAT_MERUM, JugglerMerumSeenText, JugglerMerumBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext JugglerMerumAfterBattleText
	waitbutton
	closetext
	end
	
JugglerMerumSeenText:
    text "Mi pokemon se ha"
    line "perdido. Me ayudas"
	cont "a buscarlo?"
    done

JugglerMerumBeatenText:
    text "No esta por aqui?"
	line "Pues manda narices"
    done

JugglerMerumAfterBattleText:
    text "No entiendo como"
    line "el pokemon Brujula"
	cont "podria perderse."
    done

CooltrainerFSapph:
	trainer COOLTRAINERF, SAPPH, EVENT_BEAT_TRAINER9, CooltrainerFSapphSeenText, CooltrainerFSapphBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext CooltrainerFSapphAfterBattleText
	waitbutton
	closetext
	end
	
CooltrainerFSapphSeenText:
    text "Ah... ah..."
    line "Yo quiero..."
    cont "...tu leche..."
    done

CooltrainerFSapphBeatenText:
    text "'Tu leche' le"
    line "decia a MILTANK!"
    done

CooltrainerFSapphAfterBattleText:
    text "Ah... ah..."
    line "(Estoy cansada)"
    cont "Te perdono por"
    cont "vencerme pero"
    cont "no por pensar"
    cont "mal, baby."
    done	

Route28Sign:
	jumptext Route28SignText

Route28HiddenRareCandy:
	hiddenitem RARE_CANDY, EVENT_ROUTE_28_HIDDEN_RARE_CANDY

Route28SignText:
	text "ROUTE 28"
	done

Route28_MapEvents:
	db 0, 0 ; filler

	db 2 ; warp events
	warp_event  7,  3, ROUTE_28_STEEL_WING_HOUSE, 1
	warp_event 33,  5, VICTORY_ROAD_GATE, 7

	db 0 ; coord events

	db 2 ; bg events
	bg_event 31,  5, BGEVENT_READ, Route28Sign
	bg_event 25,  2, BGEVENT_ITEM, Route28HiddenRareCandy

	db 8 ; object events
	object_event  31, 6, SPRITE_SUPER_NERD, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 4, TrainerSupernerdGoldy, -1
	object_event  17, 9, SPRITE_COOLTRAINER_M, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 2, TrainerCooltrainermRagu, -1
	object_event  21, 9, SPRITE_SWIMMER_GUY, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 1, TrainerSwimmermPacoBeer, EVENT_BEAT_RED
	object_event  7, 12, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_TRAINER, 1, TrainerCamperSpolker, -1
	object_event  13, 12, SPRITE_COOLTRAINER_M, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_TRAINER, 2, TrainerCooltrainermShelea, -1
	object_event  4, 12, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 1, TrainerCamperExi, -1
	object_event  31, 11, SPRITE_SUPER_NERD, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 4, TrainerJugglerMerum, -1
	object_event  24, 9, SPRITE_LASS, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 6, CooltrainerFSapph, -1
