	const_def 2 ; object constants
	const SOULHOUSE_MRFUJI
	const SOULHOUSE_TEACHER
	const SOULHOUSE_LASS
	const SOULHOUSE_GRANNY

SoulHouse_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks

TrainerManiacLavender:
	trainer POKEMANIAC, LAVNDER2, EVENT_BEAT_LAVENDER, ManiacLavenderSeenText, ManiacLavenderBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext ManiacLavenderAfterBattleText
	waitbutton
	closetext
	end

ManiacLavenderSeenText:
    ntag "LAVNDER"
    text "Ese tipo de"
	line "nombre A.VADER."
    cont "Su PODER MIDELAR"
    cont "es muy poderoso."

    para "Que dices?"
    line "ULTRAMAGIC? Yo?"
    cont "Ah! Ya recuerdo."

    para "Me venciste en"
    line "TOHJO FALLS."

    para "Esta vez sera"
    line "muy diferente."

    para "Te derrotare a"
    line "ti y a la policia"
    cont "de JOHTO."

    para "La MAFIA sera"
    line "revivida!"

    para "No puedes ganar,"
    line "preparate DOOD!."
    done

ManiacLavenderBeatenText:
    text "Otra vez no,"
	line "DOOD!"
    done

ManiacLavenderAfterBattleText:
    ntag "LAVNDER"
    text "Por favor, no me"
    line "delates a MELKOR,"
	cont "el JEFE de POLICIA"
	cont "de JOHTO!"

    para "Solo estaba de"
    line "broma, yo no soy"
    cont "ULTRAMAGIC."
    done

MrFuji:
	jumptextfaceplayer MrFujiText

SoulHouseTeacherScript:
	jumptextfaceplayer SoulHouseTeacherText

SoulHouseLassScript:
	jumptextfaceplayer SoulHouseLassText

SoulHouseGrannyScript:
	jumptextfaceplayer SoulHouseGrannyText

MrFujiText:
	text "MR.FUJI: Welcome."

	para "Hmm… You appear to"
	line "be raising your"

	para "#MON in a kind"
	line "and loving manner."

	para "#MON lovers"
	line "come here to pay"

	para "their respects to"
	line "departed #MON."

	para "Please offer con-"
	line "dolences for the"

	para "souls of the de-"
	line "parted #MON."

	para "I'm sure that will"
	line "make them happy."
	done

SoulHouseTeacherText:
	text "There are other"
	line "graves of #MON"
	cont "here, I think."

	para "There are many"
	line "chambers that only"
	cont "MR.FUJI may enter."
	done

SoulHouseLassText:
	text "I came with my mom"
	line "to visit #MON"
	cont "graves…"
	done

SoulHouseGrannyText:
	text "The #MON that"
	line "lived with me…"

	para "I loved them like"
	line "my grandchildren…"
	done

SoulHouse_MapEvents:
	db 0, 0 ; filler

	db 2 ; warp events
	warp_event  4,  7, LAVENDER_TOWN, 6
	warp_event  5,  7, LAVENDER_TOWN, 6

	db 0 ; coord events

	db 0 ; bg events

	db 5 ; object events
	object_event  4,  2, SPRITE_GRAMPS, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, MrFuji, -1
	object_event  7,  3, SPRITE_TEACHER, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 1, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, SoulHouseTeacherScript, -1
	object_event  2,  5, SPRITE_LASS, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, SoulHouseLassScript, -1
	object_event  1,  3, SPRITE_GRANNY, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, SoulHouseGrannyScript, -1
	object_event  2, 7, SPRITE_SUPER_NERD, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 1, TrainerManiacLavender, EVENT_BEAT_RED
