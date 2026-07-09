  const_def 2 ; object constants
  const MICOLO_HIDEOUT_BASEMENT_FURRY
  const MICOLO_HIDEOUT_BASEMENT_MEWTWO
  const MICOLO_HIDEOUT_BASEMENT_MICOLO
  const MICOLO_HIDEOUT_BASEMENT_CATERMANO

MicoloHideoutBasement_MapScripts:
  db 0 ; scene scripts

  db 1 ; callbacks
  callback MAPCALLBACK_OBJECTS, .Catermano

.Catermano:
  checkevent EVENT_112
  iftrue .DisappearCatermano
  appear MICOLO_HIDEOUT_BASEMENT_CATERMANO
  return
.DisappearCatermano:
  disappear MICOLO_HIDEOUT_BASEMENT_CATERMANO
  return

MicoloHideoutBasementCatermano:
  opentext
  writetext CatermanoNoteText
  waitbutton
  special GiveCatermano
  iffalse .partyfull
  writetext CatermanoGivenText
  playsound SFX_KEY_ITEM
	waitsfx
	closetext
	setevent EVENT_112
  disappear MICOLO_HIDEOUT_BASEMENT_CATERMANO
  end
.partyfull
  writetext CatermanoPartyFullText
  waitbutton
  closetext
  end

MicoloHideoutBasementPCScript:
  opentext
  playsound SFX_BOOT_PC
  checkevent EVENT_114
  iftrue .already_got_pkhex
  writetext MicoloHideoutBasementPCPasswordText
  waitbutton
  special HackMon
  iftrue .correct
  writetext MicoloHideoutBasementPCIncorrectText
  playsound SFX_SHUT_DOWN_PC
  waitsfx
  cry MEWTWO
  pause 15
  closetext
  writecode VAR_BATTLETYPE, BATTLETYPE_SHINY
  loadwildmon MEWTWO, 100
  startbattle
  reloadmapafterbattle
  end
.correct
  writetext MicoloHideoutBasementPCCorrectText
  waitbutton
  verbosegiveitem PKHEX
  setevent EVENT_114
  closetext
  end
.already_got_pkhex
  writetext MicoloHideoutBasementPCAfterText
  waitbutton
  closetext
  end

MicoloHideoutBasementClonationScript:
  opentext
  playsound SFX_BOOT_PC
  special CloneMon
  playsound SFX_SHUT_DOWN_PC
  closetext
  end

MicoloHideoutBasementPPUp:
  itemball PP_UP, 99


TrainerOfficerFurry:
  trainer OFFICER, FURRY2, EVENT_10E, OfficerFurrySeenText2, OfficerFurryBeatenText2, 0, .Script

.Script:
  endifjustbattled
  opentext
  writetext OfficerFurryAfterText2
  waitbutton
  closetext
  end

TrainerZzz4:
  trainer SCHOOLBOY, Zzz4, EVENT_10F, Zzz4SeenText, Zzz4BeatenText, 0, .Script
.Script:
  endifjustbattled
  opentext
  writetext Zzz4AfterText
  waitbutton
  closetext
  end

TrainerMicolo:
  trainer MASTERMIND, MICOLO, EVENT_110, MicoloHideoutSeenText, MicoloHideoutBeatenText, 0, .Script
.Script:
  endifjustbattled
  opentext
  writetext MicoloHideoutAfterText
  waitbutton
  closetext
  end

OfficerFurrySeenText2:
  ntag "FURRY"
  text "Como?"
  line "Si, soy FURRY."
  cont "Trabajaba para"
  cont "MICOLO desde el"
  cont "principio."
  para "Todos se burlaban"
  line "de mi por mi odio"
  cont "hacia los hacks..."
  para "Pues ahora mis"
  line "#MON estan"
  cont "hackeados!"
  para "Jajaja!"
  line "Por fin me vengare"
  cont "de todos los que"
  cont "se burlaron de mi."
  done

OfficerFurryBeatenText2:
  text "He perdido incluso"
  line "con hacks?!"
  done

OfficerFurryAfterText2:
  ntag "FURRY"
  text "No me dirijas la"
  line "palabra."
  done

MicoloHideoutSeenText:
  ntag "???"
  text "DARKRAI: yo era el"
  line "malo desde el"
  cont "principio."
  para "ARCEUS: calla yo"
  line "soy tu dios."
  para "DARKRAI: tu eres"
  line "un caballo blanco."
  para "ARCEUS: y tu eres"
  line "un fantasma negro."
  cont "xDDDDDDDDDD"
  done

MicoloHideoutBeatenText:
  text "En serio?"
  line "LOOOOOOOOOOOOOOL"
  done

MicoloHideoutAfterText:
  ntag "MICOLO"
  text "Todo acabo???"
  line "Como has podido"
  cont "derrotarme?"
  cont "Como has podido"
  cont "derrotar a mi"
  para "PODER MIDELAR?"
  
  para "Has arruinado"
  line "todo mi plan"
  cont "Y ahora que?"
  cont "Que va a pasar"
  cont "ahora??"
  cont "Te chivaras a"
  cont "MELKOR el"
  cont "JEFE POLICIA"
  cont "de JOHTO y me"
  cont "banearan a mi"
  cont "y a todos mis"
  cont "valiosos clones"
  para "subditos?"
  
  para "Que te parece si"
  line "olvidamos todo"
  para "lo que ha pasado?"
  
  para "Si... eso es!"
  line "Te doy permiso"
  cont "para usar este"
  cont "lugar en tu"
  para "beneficio."
  
  para "A partir de ahora"
  line "eres un miembro"
  cont "honorifico de"
  cont "la MAFIA."
  done

Zzz4SeenText:
  ntag "Zzz"
  text "Asi que eres"
  line "tu otra vez!"
  cont "Este es mi..."
  para "hogar."
  
  para "Si, Yo naci aqui,"
  line "pero nunca nadie" 
  cont "me ha hecho caso."
  
  para "Me ignoran..."
  line "Es como si... me"
  cont "tratasen como a"
  cont "un objeto..."
  cont "como a un loco"
  cont "o como si fuese"
  cont "basura..."
  cont "MALDITA SEAAAA!"
  cont "PALLASO!"
  
  para "Es todo por tu"
  line "maldita CULPA!!"
  
  para "Me creia un pro"
  line "venciendo a..."
  cont "todos con mi"
  cont "fantastico"
  para "monotipo NORMAL."
  
  para "Pero entonces..."
  line "apareciste tu..."
  cont "en la ROUTE 6"
  cont "y me diste una"
  cont "soberana paliza"
  cont "de jamas olvidar."
  
  para "Pense... bueno,"
  line "hasta los proasos"
  cont "como yo podemos"
  cont "perder a veces."
  
  para "Pero entonces..."
  line "nos volvimos a"
  cont "encontrar en" 
  cont "FUCHSIA CITY."
  
  para "Y te rete a un"
  line "combate, habia"
  cont "llegado la hora de"
  cont "mi VENGANZA!"
  para "Pero... entonces"
  line "..."
  cont "MALDITA SEAAAAAA!"
  cont "Me volviste a"
  cont "dar otra soberana"
  para "PALIZAAAAAA!"

  para "Desde ese dia..."
  line "Entrene duramente"
  cont "cada dia a mis"
  cont "#MON."
  cont "Incluso venci a"
  cont "todos los Lideres"
  cont "de Gym de KANTO y"
  cont "me dieron un"
  cont "permiso para ir"
  para "a SILVER CAVE."
  
  para "Tenia que ir alli"
  line "ya que habia oido"
  cont "rumores de que"
  cont "RED KROW estaba"
  cont "alli."
  
  para "Pero cuando estaba"
  line "terminando mi"
  cont "viaje alli..."
  cont "Apareciste de"
  cont "nuevo en SILVER"
  para "CAVE."
  
  para "Fue una brutal"
  line "batalla. Tanto"
  cont "que me esforce al"
  cont "maximo..."
  cont "Pero de nada..."
  cont "sirvio, una vez"
  cont "mas, me volviste"
  para "a derrotar."
 
  para "Ademas RED KROW no"
  line "estaba alli."
  cont "Ese RED, no era"
  para "mi sensei."
  
  para "Pero ya se acabo"
  line "el que te rias de"
  cont "mi..."
  cont "He usado una"
  cont "maquina para"
  cont "maximimar al"
  cont "maximo el"
  cont "potencial de mis"
  cont "#MON."
  cont "Esta vez la"
  cont "victoria es mia"
  cont "y solo mia..."
  cont "Te humillare de"
  cont "tal forma que"
  cont "jamas volveras a"
  cont "jugar a un juego"
  cont "de #MON."
  done

Zzz4BeatenText:
  text "Me has dejado"
  line "roto2."
  cont "..."
  cont "..."
  done

Zzz4AfterText:
  ntag "Zzz"
  text "LOOOOOOOOL"
  done

CatermanoNoteText:
  text "Hay una nota..."
  line "“CATERMANO de"
  cont "A.VADER."
  cont "Solo para los"
  cont "mas autistas."
  done

CatermanoPartyFullText:
  text "Your #MON party"
  line "is full."
  done

CatermanoGivenText:
  text "<PLAYER> received a"
  line "#MON."
  done

MicoloHideoutBasementPCPasswordText:
  text "Servidor central"
  line "de MIDELE."
  para "USER: MICOLO"
  line "PASSWORD..."
  done

MicoloHideoutBasementPCCorrectText:
  text "Iniciada sesion"
  line "como MICOLO."
  para "Descargando datos"
  line "de PKHex..."
  done

MicoloHideoutBasementPCIncorrectText:
  text "Inicio de sesion"
  line "fallido."
  para "Activando sistema"
  line "de seguridad."
  done

MicoloHideoutBasementPCAfterText:
  text "El PKHex ya ha"
  line "sido descargado."
  done


MicoloHideoutBasement_MapEvents:
  db 0, 0 ; filler

  db 2 ; warp events
  warp_event 9, 12, MICOLO_HIDEOUT, 2
  warp_event 3,  8, MICOLO_HIDEOUT, 3

  db 0 ; coord events

  db 4 ; bg events
  bg_event 4, 2, BGEVENT_UP, MicoloHideoutBasementPCScript
  bg_event 5, 2, BGEVENT_UP, MicoloHideoutBasementPCScript
  bg_event 8, 2, BGEVENT_UP, MicoloHideoutBasementClonationScript
  bg_event 9, 2, BGEVENT_UP, MicoloHideoutBasementClonationScript


  db 5 ; object events
  object_event  5, 7, SPRITE_POKEFAN_M, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 1, TrainerOfficerFurry, -1
  object_event  7, 7, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 1, TrainerZzz4, -1
  object_event  6, 3, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 4, TrainerMicolo, -1
  object_event  2, 2, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, MicoloHideoutBasementCatermano, EVENT_111
  object_event  3, 2, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, MicoloHideoutBasementPPUp, EVENT_116
