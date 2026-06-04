	const_def 2 ; object constants
	const ROUTE5CLEANSETAGHOUSE_GRANNY
	const ROUTE5CLEANSETAGHOUSE_TEACHER
    const ROUTE5CLEANSETAGHOUSE_SUPER_NERD1
	
Route5CleanseTagHouse_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks

Route5CleanseTagHouseGrannyScript:
	faceplayer
	opentext
	checkevent EVENT_GOT_CLEANSE_TAG
	iftrue .GotCleanseTag
	writetext Route5CleanseTagHouseGrannyText1
	buttonsound
	verbosegiveitem CLEANSE_TAG
	iffalse .NoRoom
	setevent EVENT_GOT_CLEANSE_TAG
.GotCleanseTag:
	writetext Route5CleanseTagHouseGrannyText2
	waitbutton
.NoRoom:
	closetext
	end

Route5CleanseTagHouseTeacherScript:
	jumptextfaceplayer Route5CleanseTagHouseTeacherText

HouseForSaleBookshelf:
	jumpstd difficultbookshelf

TrainerSupernerdFelipex88:
	trainer SUPER_NERD, FELIPEX, EVENT_BEAT_TRAINER6, SupernerdFelipex88SeenText, SupernerdFelipex88BeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext SupernerdFelipex88AfterBattleText
	waitbutton
	closetext
	end

SupernerdFelipex88SeenText:
    text "No eres demasiado"
	line "mayor para jugar"
	para "a Pokemon? :video:"
	
	para "Adultos maduros"
    line "deberian jugar a"
	cont "juegos sangrientos"
	cont "de tiros y lucha."
	cont ":video:"
	cont "Pokemon es para"
	cont "crios, no sigas"
	cont "jugando. :video:"
	cont "Te lo demostraré."
    done

SupernerdFelipex88BeatenText:
    text "Me gusta cortar"
	line "mi lengua."
    done

SupernerdFelipex88AfterBattleText:
    text "Maldita sea."
	line "Ahora mismo voy"
	cont "a cortar la lengua"
	cont "de mi LICKITUNG."
    done		

Route5CleanseTagHouseGrannyText1:
	text "Eeyaaaah!"

	para "I sense a sinister"
	line "shadow hovering"
	cont "over you."

	para "Take this to ward"
	line "it off!"
	done

Route5CleanseTagHouseGrannyText2:
	text "You were in mortal"
	line "danger, but you"
	cont "are protected now."
	done

Route5CleanseTagHouseTeacherText:
	text "My grandma is into"
	line "warding off what"

	para "she believes to be"
	line "evil spirits."

	para "I'm sorry that she"
	line "startled you."
	done

Route5CleanseTagHouse_MapEvents:
	db 0, 0 ; filler

	db 2 ; warp events
	warp_event  2,  7, ROUTE_5, 4
	warp_event  3,  7, ROUTE_5, 4

	db 0 ; coord events

	db 2 ; bg events
	bg_event  0,  1, BGEVENT_READ, HouseForSaleBookshelf
	bg_event  1,  1, BGEVENT_READ, HouseForSaleBookshelf

	db 3 ; object events
	object_event  2,  5, SPRITE_GRANNY, SPRITEMOVEDATA_SPINCLOCKWISE, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, Route5CleanseTagHouseGrannyScript, -1
	object_event  5,  3, SPRITE_TEACHER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, Route5CleanseTagHouseTeacherScript, -1
	object_event  1, 3, SPRITE_SUPER_NERD, SPRITEMOVEDATA_SPINCLOCKWISE, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 4, TrainerSupernerdFelipex88, -1
