  const_def 2 ; object constants
  const MICOLO_HIDEOUT_TOPO
  const MICOLO_HIDEOUT_LAVENDER
  const MICOLO_HIDEOUT_AVADER
  const MICOLO_HIDEOUT_PHENT
  const MICOLO_HIODEUT_PACO
  const MICOLO_HIODEUT_SANTY
  const MICOLO_HIDEOUT_MEWTWO
  const MICOLO_HIDEOUT_ITEM_MUSIC_PLAYER
  const MICOLO_HIDEOUT_ITEM_SACRED_ASH
  const MICOLO_HIDEOUT_MEWTWO_GUARD

MicoloHideout_MapScripts:
  db 0 ; scene scripts

  db 1 ; callbacks
  callback MAPCALLBACK_OBJECTS, .MicoloMewtwoGuardCallback

.MicoloMewtwoGuardCallback:
	checkevent EVENT_110
	iftrue .DisappearGuard
	appear MICOLO_HIDEOUT_MEWTWO_GUARD
	return
.DisappearGuard
	disappear MICOLO_HIDEOUT_MEWTWO_GUARD
	return


MicoloHideoutPC1Script:
  opentext
  playsound SFX_BOOT_PC
  writetext MicoloHideoutPC1QuestionText
  yesorno
  iftrue .hackeo_midelar
  writetext MicoloHideoutPC1NoText
  waitbutton
  playsound SFX_SHUT_DOWN_PC
  closetext
  end
.hackeo_midelar
  writetext MicoloHideoutPC1YesText
  waitbutton
  cry MEWTWO
  pause 15
  closetext
  writecode VAR_BATTLETYPE, BATTLETYPE_SHINY
  loadwildmon MEWTWO, 100
  startbattle
  reloadmapafterbattle
  end
  
MicoloHideoutPCGiftScript:
  opentext
  playsound SFX_BOOT_PC
  writetext MicoloHideoutPCGiftText
  waitbutton
  checkcode VAR_PARTYCOUNT
  ifequal PARTY_LENGTH, .PartyFull
  special GiveOddEgg
  writetext MicoloHideoutPCText_GotOddEgg
  playsound SFX_KEY_ITEM
  waitsfx
  playsound SFX_SHUT_DOWN_PC
  closetext
  end
.PartyFull:
	opentext
	writetext MicoloHideoutPCText_PartyFull
	waitbutton
	playsound SFX_SHUT_DOWN_PC
	closetext
	end
	
MicoloHideoutPCText_GotOddEgg:
	text "<PLAYER> received"
	line "ODD EGG!"
	done
	
MicoloHideoutPCText_PartyFull:
	text "You've no room for"
	line "this in your team."
	done
	
MicoloHideoutPCGift2Script:
  opentext
  playsound SFX_BOOT_PC
  writetext MicoloHideoutPCGiftText
  waitbutton
  verbosegiveitem RARE_CANDY, 99
  iffalse .BagFull
  closetext
  end

.BagFull:
	playsound SFX_SHUT_DOWN_PC
	closetext
	end
	
MicoloHideoutPCGiftText:
	text "DOWNLOADING......."
	line ".................."
	cont ".................."
	cont ".................."
	done

MicoloHideoutPC2Script:
  opentext
  playsound SFX_BOOT_PC
  writetext MicoloHideoutPC2Text
  waitbutton
  playsound SFX_SHUT_DOWN_PC
  closetext
  end

MicoloHideoutPC3Script:
  opentext
  playsound SFX_BOOT_PC
  writetext MicoloHideoutPC3Text
  waitbutton
  playsound SFX_SHUT_DOWN_PC
  closetext
  end

MicoloHideoutPC4Script:
  opentext
  playsound SFX_BOOT_PC
  writetext MicoloHideoutPC4Text
  waitbutton
  playsound SFX_SHUT_DOWN_PC
  closetext
  end

MicoloHideoutPC5Script:
  opentext
  playsound SFX_BOOT_PC
  writetext MicoloHideoutPC5Text
  waitbutton
  playsound SFX_SHUT_DOWN_PC
  closetext
  end

MicoloHideoutPC6Script:
  opentext
  playsound SFX_BOOT_PC
  writetext MicoloHideoutPC6Text
  waitbutton
  playsound SFX_SHUT_DOWN_PC
  closetext
  end

MicoloHideoutPC7Script:
  opentext
  playsound SFX_BOOT_PC
  writetext MicoloHideoutPC6AskText
  yesorno
  iftrue .cure
  playsound SFX_SHUT_DOWN_PC
  closetext
  end
.cure
  writetext MicoloHideoutPC6YesText
  waitbutton
  playsound SFX_SHUT_DOWN_PC
  closetext
  end


MicoloHideoutNote1Script:
  opentext
  writetext MicoloHideoutNote1Text
  waitbutton
  closetext
  end

MicoloHideoutNote2Script:
  opentext
  writetext MicoloHideoutNote2Text
  waitbutton
  closetext
  end

MicoloHideoutJournal1Script:
  opentext
  writetext MicoloHideoutJournal1Text
  waitbutton
  closetext
  end

MicoloHideoutJournal2Script:
  opentext
  writetext MicoloHideoutJournal2Text
  waitbutton
  closetext
  end

MicoloHideoutJournal3Script:
  opentext
  writetext MicoloHideoutJournal3Text
  waitbutton
  closetext
  end

MicoloHideoutGoldyNoteScript:
  opentext
  writetext MicoloHideoutGoldyNoteText
  waitbutton
  closetext
  end

MicoloHideoutTopoNoteScript:
  opentext
  writetext MicoloHideoutTopoNoteText
  waitbutton
  closetext
  end

MicoloHideoutSantyNoteScript:
  opentext
  writetext MicoloHideoutSantyNoteText
  waitbutton
  closetext
  end

MicoloHideoutPacoNoteScript:
  opentext
  writetext MicoloHideoutPacoNoteText
  waitbutton
  closetext
  end

MicoloHideoutFurryNoteScript:
  opentext
  writetext MicoloHideoutFurryNoteText
  waitbutton
  closetext
  end
  
MicoloHideoutFelipexNoteScript:
  opentext
  writetext MicoloHideoutFelipexNoteText
  waitbutton
  closetext
  end
  
MicoloHideoutDarkiNoteScript:
  opentext
  writetext MicoloHideoutDarkiNoteText
  waitbutton
  closetext
  end
  
MicoloHideoutZzzNoteScript:
  opentext
  writetext MicoloHideoutZzzNoteText
  waitbutton
  closetext
  end

MicoloHideoutFDEScript:
  opentext
  writetext MicoloHideoutFDEText
  waitbutton
  closetext
  end

MicoloHideoutPC1QuestionText:
  text "Encendido PKHex."
  line "Confirme el hackeo"
  cont "midelar."
  done

MicoloHideoutPC1YesText:
  text "Ejecutando hackeo"
  line "midelar..."
  done

MicoloHideoutPC1NoText:
  text "Hackeo midelar"
  line "denegado."
  done

MicoloHideoutPC2Text:
  text "Mostrando datos de"
  line "Pokemon hackeados:"
  para "“2000 #MON"
  line "hackeados han sido"
  cont "distribuidos y ya"
  cont "han cruzado la"
  cont "frontera de JOHTO”"
  done

MicoloHideoutPC3Text:
  text "Mostrando datos"
  line "sobre beneficios:"
  para "“Venta de Pokemon:"
  line "650000¥."
  para "Venta de"
  line "monociclos:"
  cont "1000000¥."
  para "Beneficio total: "
  line "1650000¥.”"
  done

MicoloHideoutPC4Text:
  text "Mostrando datos"
  line "sobre integrantes"
  cont "de MIDELE:"
  para "“A.VADER: ayudante"
  line "de clonacion 1."
  cont "Sueldo: 500000¥."
  para "PHENT: ayudante de"
  line "clonacion 2."
  cont "Sueldo: 500000¥."
  para "PACOCHEF: lacayo."
  line "Sueldo: 25000¥."
  para "ULTRAMAGIC: agente"
  line "de operaciones."
  cont "Sueldo: 325000¥."
  para "TOPO: seguridad."
  line "Sueldo 75000¥.”"
  done

MicoloHideoutPC5Text:
  text "Mostrando datos"
  line "sobre personas"
  cont "peligrosas:"
  para "“MELKOR: jefe de"
  line "policia de JOHTO."
  para "ALLIARE: segunda"
  line "al cargo de la"
  cont "policia de JOHTO."
  para "TSURUKO: alto"
  line "cargo de la"
  cont "policia de JOHTO."
  para "Se debe evitar a"
  line "toda costa que"
  cont "estos individuos"
  cont "nos localicen."
  para "Debemos"
  line "observarlos mas de"
  cont "cerca...”"
  done

MicoloHideoutPC6Text:
  text "Hay una cadena"
  line "de e-mail:"
  para "“ATS: nintendo"
  line "N: que"
  cont "ATS: va a haber"
  cont "mega golem"
  cont "N: si"
  cont "ATS: ok”"
  done

MicoloHideoutPC6AskText:
  text "Desea curar a sus"
  line "#MON?"
  done

MicoloHideoutPC6YesText:
  text "Pues vaya a un"
  line "Centro #MON."
  done

MicoloHideoutJournal1Text:
  text "Diario de Micolo,"
  line "1 de enero de X"
  para "Mi sistema de hack"
  line "de Pokemon ha sido"
  cont "un exito."
  para "Experimentare bajo"
  line "la guarderia, y"
  cont "sera mi tapadera."
  done

MicoloHideoutJournal2Text:
  text "Diario de Micolo,"
  line "6 de enero de X"
  para "He conseguido"
  line "traspasar el"
  cont "firewall de la"
  cont "red de BILL,"
  cont "el creador del"
  para "sistema de"
  line "almacenamiento de"
  cont "#MON."
  cont "Pero no pude"
  cont "avanzar mas o me"
  cont "iban a descubrir."
  
  para "No sin antes" 
  line "copiar toda la"
  cont "info sobre el"
  cont "glitch de la"
  para "clonacion"
  
  para "Saber todo sobre"
  line "ese glitch sera"
  cont "valioso para poder"
  cont "llevar a cabo todos"
  cont "mis planes."
  
  para "Toda la tecnologia"
  line "de la que dispongo"
  cont "sera de mucha"
  cont "ayuda para ello."
  done

MicoloHideoutJournal3Text:
  text "Diario de Micolo,"
  line "4 de febrero."
  para "A.VADER ha"
  line "aparecido y le he"
  cont "dado varios de mis"
  cont "MEW clonados."
  
  para "Segun me ha"
  line "contado, A.VADER"
  cont "el tiene la"
  cont "la habilidad"
  cont "especial de ZANZA"
  cont "que le permite ser"
  cont "OMNIPRESENTE."
  
  para "Es decir, AVADER"
  line "puede estar en"
  cont "varios lugares al"
  cont "mismo tiempo, lo"
  cont "cual es muy util."
  
  para "Dice que usara los"
  line "MEW para liberar a"
  cont "ULTRAMAGIC."
  cont "El plan progresa"
  cont "adecuadamente."
  done

MicoloHideoutNote1Text:
  text "Hay algo escrito"
  line "en una nota:"
  para "“Parece que fallos"
  line "en el proceso de"
  cont "clonacion causan"
  cont "huevos de MEWTWO."
  cont "Se requiere mas"
  cont "investigacion”"
  done

MicoloHideoutNote2Text:
  text "Hay algo escrito"
  line "en una nota:"
  para "“MIDELE POWER, el"
  line "poder del Trueno"
  cont "de Oscuridad, un"
  cont "ataque creado"
  cont "a partir del"
  cont "poder de MIDELE."
  para "Debemos investigar"
  line "mas a fondo este"
  cont "ataque."
  done

MicoloHideoutGoldyNoteText:
  text "Datos Sujeto 01:"
  line "Nombre: Goldy."
  cont "Clonacion: Apto."
  para "Anotaciones:"
  line "Parece que este"
  cont "sujeto posee"
  cont "habilidades de"
  cont "viaje entre"
  cont "dimensiones."
  para "Parece estar"
  line "relacionado con"
  cont "A.VADER."
  cont "Se requiere"
  cont "mas investigacion."
  done

MicoloHideoutTopoNoteText:
  text "Datos Sujeto 02:"
  line "Nombre: Topo."
  cont "Clonacion: Apto."
  para "Anotaciones:"
  line "Parece que todos"
  cont "se asustan al ver"
  cont "su cara."
  cont "Servira como"
  cont "seguridad."
  done

MicoloHideoutSantyNoteText:
  text "Datos Sujeto 03:"
  line "Nombre: Santy."
  cont "Clonacion: Apto."
  para "Anotaciones:"
  line "Parece ser capaz"
  cont "de viajar entre"
  cont "dimensiones."
  cont "Huele a hierba."
  cont "Se requiere mas"
  cont "investigacion."
  done

MicoloHideoutPacoNoteText:
  text "Datos Sujeto 04:"
  line "Nombre: Paco."
  cont "Clonacion: Apto."
  para "Anotaciones:"
  line "El mejor nadador"
  cont "de la region."
  cont "Mientras le de"
  cont "cerveza, estara"
  cont "a mis ordenes."
  done

MicoloHideoutFurryNoteText:
  text "Datos Sujeto 05:"
  line "Nombre: Furry."
  cont "Clonacion: Apto."
  para "Anotaciones:"
  line "Su poder antihack"
  cont "es demasiado"
  cont "poderoso."
  cont "Debe ser"
  cont "investigado."
  done
  
MicoloHideoutZzzNoteText:
  text "Datos Sujeto 06:"
  line "Nombre: Zzz."
  cont "Clonacion: Apto."
  para "Anotaciones:"
  line "Hubo un fallo en"
  cont "el sistema en el"
  cont "momento de su"
  para "creacion."
  
  line "Esto le hizo"
  cont "desarrollar un"
  cont "trastorno"
  cont "obsesivo"
  cont "compulsivo"
  cont "en encontrar a"
  cont "su sensei"
  para "Red Krow."
  
  line "Sufre de ataques"
  cont "momentaneos de"
  cont "locura retando"
  cont "a combate a"
  cont "todo el que"
  cont "encuentre en su"
  cont "camino."
  done
  
MicoloHideoutFelipexNoteText:
  text "Datos Sujeto 07:"
  line "Nombre: Felipex."
  cont "Clonacion: Apto."
  para "Anotaciones:"
  line "Su principal"
  cont "aficion es"
  cont "cortarse la"
  cont "lengua."
  cont "Tambien suele"
  cont "poner videos y"
  cont "usar estrategias"
  cont "muy sucias"
  cont "basadas en el"
  cont "Minimize y los"
  cont "OHKO Moves."
  
  para "Se desconoce su"
  line "paradero actual."
  done
  
MicoloHideoutDarkiNoteText:
  text "Datos Sujeto 08:"
  line "Nombre: Darki."
  cont "Clonacion: Apto."
  para "Anotaciones:"
  line "Tuvo varios"
  cont "problemas al inicio"
  cont "pero esta siendo"
  cont "bastante Maduro."
  para "Parece ser que esta"
  line "Madurando de forma"
  cont "adecuada"
  done

MicoloHideoutFDEText:
  text "Hay un libro que"
  line "sobresale..."
  para "“FDE, tomo 1."
  line "Firmado por"
  cont "A.VADER.”"
  done



TrainerCloneMewtwo:
  trainer CLONE, MEWTWO_T, EVENT_105, CloneMewtwoSeenText, CloneMewtwoBeatenText, 0, .Script

.Script:
  endifjustbattled
  opentext
  writetext CloneMewtwoAfterText
  waitbutton
  closetext
  end

TrainerOfficerTopo:
  trainer OFFICER, TOPO, EVENT_106, OfficerTopoSeenText, OfficerTopoBeatenText, 0, .Script

.Script:
  endifjustbattled
  opentext
  writetext OfficerTopoAfterText
  waitbutton
  closetext
  end

TrainerScientistAvader:
 trainer SCIENTIST, AVADER, EVENT_107, ScientistAvaderSeenText, ScientistAvaderBeatenText, 0, .Script

.Script:
 endifjustbattled
 opentext
 writetext ScientistAvaderAfterText
 waitbutton
 closetext
 end

TrainerNerdLavender:
  trainer POKEMANIAC, LAVNDER, EVENT_108, NerdLavenderSeenText, NerdLavenderBeatenText, 0, .Script
.Script:
 endifjustbattled
 opentext
 writetext NerdLavenderAfterText
 waitbutton
 closetext
 end

TrainerScientistPhent:
 trainer SCIENTIST, PHENT, EVENT_109, ScientistPhentSeenText, ScientistPhentBeatenText, 0, .Script
.Script:
  endifjustbattled
  opentext
  writetext ScientistPhentAfterText
  waitbutton
  closetext
  end

TrainerSwimmerPacochef:
  trainer SWIMMERM, PACOBEER2, EVENT_10A, SwimmerPacochefSeenText, SwimmerPacochefBeatenText, 0, .Script
.Script:
  endifjustbattled
  opentext
  writetext SwimmerPacochefAfterText
  waitbutton
  closetext
  end

TrainerPsychicSanty:
  trainer PSYCHIC_T, SANTYAGO2, EVENT_10B, PsychicSantySeenText, PsychicSantyBeatenText, 0, .Script
.Script:
  endifjustbattled
  opentext
  writetext PsychicSantyAfterText
  waitbutton
  closetext
  end

CloneMewtwoSeenText:
  text "DEBO OBEDECER A"
  line "MICOLO."
  done

CloneMewtwoBeatenText:
  text "NO PUEDO PERDER."
  done

CloneMewtwoAfterText:
  text "MICOLO TE "
  line "DESTRUIRA."
  done

OfficerTopoSeenText:
  ntag "TOPO"
  text "No puedes pasar."
  done

OfficerTopoBeatenText:
  text "..."
  done

OfficerTopoAfterText:
  ntag "TOPO"
  text "Has cometido un"
  line "error al venir"
  cont "aqui."
  done

PsychicSantySeenText:
  ntag "SANTYAGO"
  text "Mi shifteo ha sido"
  line "un exito. Ahora te"
  cont "derrotare y la"
  cont "gloria sera mia."
  done
PsychicSantyBeatenText:
  text "Otra vez?"
  done

PsychicSantyAfterText:
  ntag "SANTYAGO"
  text "Volvere a shiftear"
  line "hasta que te gane."
  done

SwimmerPacochefSeenText:
  ntag "PACOBEER"
  text "MELKOR ha"
  line "desbaneado a"
  cont "LAVNDER..."
  para "Celebremoslo con"
  line "una cerveza."
  done

SwimmerPacochefBeatenText:
  text "Tu tambien quieres"
  line "cerveza?"
  done

SwimmerPacochefAfterText:
  ntag "PACOBEER"
  text "Me da igual haber"
  line "perdido, la"
  cont "cerveza no me la"
  cont "quita nadie."
  done

ScientistPhentSeenText:
  ntag "PHENT"
  text "Mi investigacion"
  line "apenas ha empezado" 
  cont "a dar frutos y un"
  cont "obstaculo como tu" 
  cont "no puede pararme." 
  
  para "Quieres ver de que"
  line "son capaces mis"
  cont "#MON?"
  done

ScientistPhentBeatenText:
  text "No puede ser!"
  line "Tantos meses para" 
  cont "NADA?"
  done

ScientistPhentAfterText:
  ntag "PHENT"
  text "No podras contra"
  line "el poder del"
  cont "Trueno de la" 
  cont "Oscuridad..."
  
  para "Vuelvete a tu" 
  line "casa si quieres" 
  cont "seguir con vida."
  done

NerdLavenderSeenText:
  ntag "LAVNDER"
  text "Llegas tarde."
  para "MICOLO ya tiene el"
  line "el poder necesario"
  cont "para destruir toda"
  cont "la region."
  para "Hora de vengarse,"
  line "DOOD!"
  done

NerdLavenderBeatenText:
  text "En serio..."
  line "Otra vez?"
  done
NerdLavenderAfterText:
  ntag "LAVNDER"
  text "Esto de perder ya"
  line "empieza a cansar."
  done

ScientistAvaderSeenText:
  ntag "A.VADER"
  text "Jeje, MICOLO me ha"
  line "permitido quedarme"
  cont "con los MEW."
  para "Aunque con estos"
  line "nuevos clones de"
  cont "MEWTWO pronto se"
  cont "quedaran atras."
  para "Preparate para"
  line "sentir el poder"
  cont "de FDE."
  done
ScientistAvaderBeatenText:
  text "Estos MEW son"
  line "basura!"
  cont "No tienen la"
  cont "divinidad del"
  cont "poder de ZANZA!"
  done
ScientistAvaderAfterText:
  ntag "A.VADER"
  text "Your blade..." 
  line "it did not cut" 
  cont "deep enough!"
 
  para "Que te pasa? te"
  line "asombra que te"
  cont "hable ahora en"
  cont "otro idioma?"
  
  para "Yo soy bilingue!"
  line "Ese idioma me lo" 
  cont "aprendi gracias a"
  cont "..."
  cont "..."
  cont "TU PRIMA!"
  cont "(y me la tire)"
  para "jeje!"
  
  para "Ah, y no te creas"
  line "que te has salido"
  cont "con la tuya."
  cont "Mi derrota es"
  cont "insignificante."
  
  para "Con el nuevo PODER"
  line "MIDELAR reinaremos"
  cont "sobre la region."
  done

MicoloHideoutMusicPlayer:
  itemball MUSIC_PLAYER

MicoloHideoutSacredAsh:
  itemball SACRED_ASH, 50

MicoloHideoutMewtwoGuardScript:
  faceplayer
  opentext
  writetext MicoloHideoutMewtwoGuardText
  waitbutton
  closetext
  end

MicoloHideoutMewtwoGuardText:
  text "POR LA GLORIA DE"
  line "MICOLO, NADIE"
  cont "PUEDE PASAR."
  done



MicoloHideout_MapEvents:
  db 0, 0 ; filler

  db 3 ; warp events
  warp_event 3, 2, DAY_CARE, 5
  warp_event 15, 36, MICOLO_HIDEOUT_BASEMENT, 1
  warp_event 9,  2, MICOLO_HIDEOUT_BASEMENT, 2

  db 0 ; coord events

  db 40 ; bg events
  ; PCs
  ; PC 1
  bg_event 2, 10, BGEVENT_UP, MicoloHideoutPC1Script
  bg_event 3, 10, BGEVENT_UP, MicoloHideoutPC1Script
  ; PC 2
  bg_event 10, 10, BGEVENT_UP, MicoloHideoutPC2Script
  bg_event 11, 10, BGEVENT_UP, MicoloHideoutPC2Script
  ; PC 3
  bg_event 24, 10, BGEVENT_UP, MicoloHideoutPC3Script
  bg_event 25, 10, BGEVENT_UP, MicoloHideoutPC3Script
  ; PC 4
  bg_event 10, 14, BGEVENT_UP, MicoloHideoutPC4Script
  bg_event 11, 14, BGEVENT_UP, MicoloHideoutPC4Script
  ; PC 5
  bg_event 12, 14, BGEVENT_UP, MicoloHideoutPC5Script
  bg_event 13, 14, BGEVENT_UP, MicoloHideoutPC5Script
  ; PC 6
  bg_event 32, 20, BGEVENT_UP, MicoloHideoutPC6Script
  bg_event 33, 20, BGEVENT_UP, MicoloHideoutPC6Script
  ; PC 7
  bg_event 12, 36, BGEVENT_UP, MicoloHideoutPC7Script
  bg_event 13, 36, BGEVENT_UP, MicoloHideoutPC7Script

  ; Bookshelves
  ; Bookshelf 1
  bg_event 27, 9, BGEVENT_READ, MicoloHideoutFDEScript
  ; Bookshelf 2
  bg_event 30, 9, BGEVENT_READ, MicoloHideoutFDEScript
  ; Bookshelves 3-8
  bg_event 2, 21, BGEVENT_READ, MicoloHideoutFDEScript
  bg_event 3, 21, BGEVENT_READ, MicoloHideoutFDEScript
  bg_event 4, 21, BGEVENT_READ, MicoloHideoutFDEScript
  bg_event 5, 21, BGEVENT_READ, MicoloHideoutFDEScript
  bg_event 6, 21, BGEVENT_READ, MicoloHideoutFDEScript
  bg_event 7, 21, BGEVENT_READ, MicoloHideoutFDEScript

  ; Bookshelves 9-12
  bg_event 24, 31, BGEVENT_READ, MicoloHideoutJournal1Script
  bg_event 25, 31, BGEVENT_READ, MicoloHideoutJournal2Script
  bg_event 26, 31, BGEVENT_READ, MicoloHideoutJournal3Script
  bg_event 27, 31, BGEVENT_READ, MicoloHideoutNote1Script

  ; Bookshelves 13-18
  bg_event 30, 31, BGEVENT_READ, MicoloHideoutNote1Script
  bg_event 31, 31, BGEVENT_READ, MicoloHideoutGoldyNoteScript
  bg_event 32, 31, BGEVENT_READ, MicoloHideoutTopoNoteScript
  bg_event 33, 31, BGEVENT_READ, MicoloHideoutSantyNoteScript
  bg_event 34, 31, BGEVENT_READ, MicoloHideoutPacoNoteScript
  bg_event 35, 31, BGEVENT_READ, MicoloHideoutFurryNoteScript

  ; Bookshelves 19-24
  bg_event 30, 35, BGEVENT_READ, MicoloHideoutNote2Script
  bg_event 31, 35, BGEVENT_READ, MicoloHideoutZzzNoteScript
  bg_event 32, 35, BGEVENT_READ, MicoloHideoutFelipexNoteScript
  bg_event 33, 35, BGEVENT_READ, MicoloHideoutDarkiNoteScript

  ; PC Gift
  bg_event 7, 0, BGEVENT_UP, MicoloHideoutPCGiftScript
  bg_event 6, 0, BGEVENT_UP, MicoloHideoutPCGiftScript
  bg_event 5, 0, BGEVENT_UP, MicoloHideoutPCGift2Script
  bg_event 4, 0, BGEVENT_UP, MicoloHideoutPCGift2Script

  db 10 ; object events
  object_event  10,  2, SPRITE_OFFICER, SPRITEMOVEDATA_STANDING_DOWN,   0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 6, TrainerOfficerTopo, -1
  object_event  11, 33, SPRITE_SUPER_NERD, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 3, TrainerNerdLavender, -1
  object_event  11, 36, SPRITE_SCIENTIST, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 3, TrainerScientistAvader, -1
  object_event  27, 29, SPRITE_SCIENTIST, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_TRAINER, 2, TrainerScientistPhent, -1
  object_event  30, 29, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_TRAINER, 2, TrainerSwimmerPacochef, -1
  object_event  21, 11, SPRITE_SUPER_NERD, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_TRAINER, 6, TrainerPsychicSanty, -1
  object_event  16, 11, SPRITE_MEWTWO, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 6, TrainerCloneMewtwo, -1
  object_event  27,  13, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, MicoloHideoutMusicPlayer, EVENT_10C
  object_event  26,  34, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, MicoloHideoutSacredAsh, EVENT_10D
  object_event   9,   2, SPRITE_MEWTWO, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, MicoloHideoutMewtwoGuardScript, EVENT_115
