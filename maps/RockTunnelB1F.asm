	const_def 2 ; object constants
	const ROCKTUNNELB1F_MEWTWO
	const ROCKTUNNELB1F_POKE_BALL1
	const ROCKTUNNELB1F_POKE_BALL2
	const ROCKTUNNELB1F_POKE_BALL3

RockTunnelB1F_MapScripts:
	db 0 ; scene scripts

	db 1 ; callbacks
	callback MAPCALLBACK_OBJECTS, .Mewtwo
	
.Mewtwo:
    checkevent EVENT_FOUGHT_MEWTWO
    iftrue .NoAppear
    checkcode VAR_BADGES
    if_not_equal 16, .NoAppear
    jump .Appear

.Appear:
	appear ROCKTUNNELB1F_MEWTWO
	return

.NoAppear:
	disappear ROCKTUNNELB1F_MEWTWO
	return

Mewtwo:
	faceplayer
	opentext
	writetext MewtwoText
	cry MEWTWO
	pause 15
	closetext
	setevent EVENT_FOUGHT_MEWTWO
	writecode VAR_BATTLETYPE, BATTLETYPE_SUICUNE
	loadwildmon MEWTWO, 70
	startbattle
	disappear ROCKTUNNELB1F_MEWTWO
	reloadmapafterbattle
	end

MewtwoText:
	text "Mew!"
	done

TrainerTwinsRazandLav1:
	trainer TWINS, RAZANDLAV1, EVENT_16, TwinsRazLavSeenText, TwinsRazLavBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext TwinsRazLavAfterBattleText
	waitbutton
	closetext
	end

TwinsRazLavSeenText:
    ntag "RAZ&LAV"
    text "El que pierda ve"
    line "Boku no Pico."
    done

TwinsRazLavBeatenText:
    text "Al menos"
    line "agregame a"
    cont "MAL..."
    done

TwinsRazLavAfterBattleText:
    ntag "RAZ&LAV"
    text "A mi me"
    line "banearon por"
    cont "menos."
    done

TrainerTwinsRazandLav2:
	trainer TWINS, RAZANDLAV2, EVENT_16, TwinsRazLavSeenText, TwinsRazLavBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext TwinsRazLavAfterBattleText
	waitbutton
	closetext
	end

RockTunnelB1FIron:
	itemball IRON

RockTunnelB1FPPUp:
	itemball PP_UP

RockTunnelB1FRevive:
	itemball REVIVE

RockTunnelB1FHiddenMaxPotion:
	hiddenitem MAX_POTION, EVENT_ROCK_TUNNEL_B1F_HIDDEN_MAX_POTION

RockTunnelB1F_MapEvents:
	db 0, 0 ; filler

	db 4 ; warp events
	warp_event  3,  3, ROCK_TUNNEL_1F, 6
	warp_event 17,  9, ROCK_TUNNEL_1F, 4
	warp_event 23,  3, ROCK_TUNNEL_1F, 3
	warp_event 25, 23, ROCK_TUNNEL_1F, 5

	db 0 ; coord events

	db 1 ; bg events
	bg_event  4, 14, BGEVENT_ITEM, RockTunnelB1FHiddenMaxPotion

	db 6 ; object events
	object_event 3, 18, SPRITE_MEWTWO, SPRITEMOVEDATA_POKEMON, 0, 1, -1, -1, PAL_OW_SILVER,PERSONTYPE_SCRIPT, 0, Mewtwo, EVENT_MEWTWO
	object_event  7, 25, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, RockTunnelB1FIron, EVENT_ROCK_TUNNEL_B1F_IRON
	object_event  6, 17, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, RockTunnelB1FPPUp, EVENT_ROCK_TUNNEL_B1F_PP_UP
	object_event 15,  2, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, RockTunnelB1FRevive, EVENT_ROCK_TUNNEL_B1F_REVIVE
	object_event  4, 7, SPRITE_TWIN, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 1, TrainerTwinsRazandLav1, -1
	object_event  4, 6, SPRITE_TWIN, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 1, TrainerTwinsRazandLav2, -1