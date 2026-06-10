	const_def 2 ; object constants
	const ROUTE20_SWIMMER_GIRL1
	const ROUTE20_SWIMMER_GIRL2
	const ROUTE20_SWIMMER_GUY
	const ROUTE20_ARTICUNO
	const ROUTE20_BIRDKEEPER1
	const ROUTE20_BIRDKEEPER2
	const ROUTE20_SWIMMER_GUY2
	const ROUTE20_SWIMMER_GUY3
	const ROUTE20_SWIMMER_GIRL3
	const ROUTE20_SWIMMER_GIRL4

Route20_MapScripts:
	db 0 ; scene scripts

	db 2 ; callbacks
	callback MAPCALLBACK_NEWMAP, .ClearRocks
	callback MAPCALLBACK_OBJECTS, .Articuno

.ClearRocks:
	setevent EVENT_CINNABAR_ROCKS_CLEARED
	return

.Articuno:
    checkevent EVENT_FOUGHT_ARTICUNO
    iftrue .NoAppear
    checkcode VAR_BADGES
    if_not_equal 16, .NoAppear
    jump .Appear

.Appear:
    appear ROUTE20_ARTICUNO
    return

.NoAppear:
    disappear ROUTE20_ARTICUNO
    return

Articuno:
    faceplayer
    opentext
    writetext ArticunoText
    cry ARTICUNO
    pause 15
    closetext
    setevent EVENT_FOUGHT_ARTICUNO
    writecode VAR_BATTLETYPE, BATTLETYPE_SUICUNE
    loadwildmon ARTICUNO, 60
    startbattle
    disappear ROUTE20_ARTICUNO
    reloadmapafterbattle
    end

ArticunoText:
	text "Artic!"
	done

TrainerSwimmerfNicole:
	trainer SWIMMERF, NICOLE, EVENT_BEAT_SWIMMERF_NICOLE, SwimmerfNicoleSeenText, SwimmerfNicoleBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext SwimmerfNicoleAfterBattleText
	waitbutton
	closetext
	end

TrainerSwimmerfLori:
	trainer SWIMMERF, LORI, EVENT_BEAT_SWIMMERF_LORI, SwimmerfLoriSeenText, SwimmerfLoriBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext SwimmerfLoriAfterBattleText
	waitbutton
	closetext
	end

TrainerSwimmermCameron:
	trainer SWIMMERM, CAMERON, EVENT_BEAT_SWIMMERM_CAMERON, SwimmermCameronSeenText, SwimmermCameronBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext SwimmermCameronAfterBattleText
	waitbutton
	closetext
	end
	
TrainerBirdKeeperBert:
	trainer BIRD_KEEPER, BERT, EVENT_BEAT_BIRD_KEEPER_BERT, BirdkeeperBertSeenText, BirdkeeperBertBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext BirdkeeperBertAfterBattleText
	waitbutton
	closetext
	end
	
TrainerBirdKeeperErnie:
	trainer BIRD_KEEPER, ERNIE, EVENT_BEAT_BIRD_KEEPER_ERNIE, BirdkeeperErnieSeenText, BirdkeeperErnieBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext BirdkeeperErnieAfterBattleText
	waitbutton
	closetext
	end
	
TrainerSwimmermLuis:
	trainer SWIMMERM, LUIS, EVENT_BEAT_SWIMMERM_LUIS, SwimmermLuisSeenText, SwimmermLuisBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext SwimmermLuisAfterBattleText
	waitbutton
	closetext
	end
	
TrainerSwimmermElmo:
	trainer SWIMMERM, ELMO, EVENT_BEAT_SWIMMERM_ELMO, SwimmermElmoSeenText, SwimmermElmoBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext SwimmermElmoAfterBattleText
	waitbutton
	closetext
	end
	
TrainerSwimmerfMina:
	trainer SWIMMERF, MINA, EVENT_BEAT_SWIMMERF_MINA, SwimmerfMinaSeenText, SwimmerfMinaBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext SwimmerfMinaAfterBattleText
	waitbutton
	closetext
	end
	
TrainerSwimmerfLeona:
	trainer SWIMMERF, LEONA, EVENT_BEAT_SWIMMERF_LEONA, SwimmerfLeonaSeenText, SwimmerfLeonaBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext SwimmerfLeonaAfterBattleText
	waitbutton
	closetext
	end

CinnabarGymSign:
	jumptext CinnabarGymSignText

SwimmerfNicoleSeenText:
	text "I feel so much"
	line "lighter in water."
	done

SwimmerfNicoleBeatenText:
	text "Oh, no!"
	done

SwimmerfNicoleAfterBattleText:
	text "Swimming exercises"
	line "your full body."

	para "It's really good"
	line "for you."
	done

SwimmerfLoriSeenText:
	text "What an impressive"
	line "collection of GYM"

	para "BADGES. We should"
	line "battle!"
	done

SwimmerfLoriBeatenText:
	text "No!"
	done

SwimmerfLoriAfterBattleText:
	text "SURF is no longer"
	line "the only HM move"
	cont "you use in water."
	done

SwimmermCameronSeenText:
	text "I guess it's im-"
	line "possible to swim"

	para "all the way to"
	line "JOHTO."
	done

SwimmermCameronBeatenText:
	text "Aiyah!"
	done

SwimmermCameronAfterBattleText:
	text "Besides the sea, I"
	line "can also swim in"
	cont "ponds and rivers."
	done

BirdkeeperBertSeenText:
	text "Found it!"
	line "A Trainer that I"
	cont "can enjoy"
	cont "fighting!"
	done

BirdkeeperBertBeatenText:
	text "I lost with all"
	line "my strength!"
	done

BirdkeeperBertAfterBattleText:
	text "That was an"
	line "incredible battle!"
	
	para "I've got goose"
	line "bumps!"
	done
	
BirdkeeperErnieSeenText:
	text "Hey, hey. Will"
	line "you battle me?"
	done

BirdkeeperErnieBeatenText:
	text "That was pretty"
	line "incredible."
	done

BirdkeeperErnieAfterBattleText:
	text "You're something"
	line "special!"
	done
	
SwimmermLuisSeenText:
	text "Phew! I've worn my"
	line "best swim trunks"
	cont "today!"
	done

SwimmermLuisBeatenText:
	text "Even if you're"
	line "wearing your best"
	cont "pants, if you don't"
	cont "win--you just"
	cont "don't win."
	done

SwimmermLuisAfterBattleText:
	text "All right!"
	line "Next time I'll"
	cont "wear party swim"
	cont "trunks!"
	done
	
SwimmermElmoSeenText:
	text "I used to be a"
	line "fisherman a while"
	cont "back. I've grown"
	cont "to love swimming"
	cont "so much, I'm always"
	cont "in my swim trunks!"
	done

SwimmermElmoBeatenText:
	text "Ulp…"
	done

SwimmermElmoAfterBattleText:
	text "Maybe I should go"
	line "back to fishing…"
	done
	
SwimmerfMinaSeenText:
	text "Mmph? Mmmph"
	line "mmmmphh? Mmmmph"
	cont "mmmmmppphh!!!"
	done

SwimmerfMinaBeatenText:
	text "Pwah!"
	done

SwimmerfMinaAfterBattleText:
	text "I was trying to"
	line "see how long I"
	cont "could hold my"
	cont "breath!"
	done
	
SwimmerfLeonaSeenText:
	text "Look! It's my very"
	line "best swimsuit and"
	cont "my very best"
	cont "Pokémon!"
	done

SwimmerfLeonaBeatenText:
	text "Ohhh!"
	done

SwimmerfLeonaAfterBattleText:
	text "Your Pokémon--are"
	line "you following the"
	cont "latest trend in"
	cont "teams?"
	done

CinnabarGymSignText:
	text "What does this"
	line "sign say?"

	para "CINNABAR GYM"
	line "LEADER: BLAINE"
	done

Route20_MapEvents:
	db 0, 0 ; filler

	db 1 ; warp events
	warp_event 38,  7, SEAFOAM_GYM, 1

	db 0 ; coord events

	db 1 ; bg events
	bg_event 37, 11, BGEVENT_READ, CinnabarGymSign

	db 10 ; object events
	object_event 52,  8, SPRITE_SWIMMER_GIRL, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_TRAINER, 3, TrainerSwimmerfNicole, -1
	object_event 45, 13, SPRITE_SWIMMER_GIRL, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_TRAINER, 3, TrainerSwimmerfLori, -1
	object_event 12, 13, SPRITE_SWIMMER_GUY, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 3, TrainerSwimmermCameron, -1
    object_event 30, 7, SPRITE_ARTICUNO, SPRITEMOVEDATA_POKEMON, 0, 1, -1, -1, PAL_OW_BLUE,PERSONTYPE_SCRIPT, 0, Articuno, EVENT_ARTICUNO
	object_event 12,  8, SPRITE_YOUNGSTER, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_TRAINER, 1, TrainerBirdKeeperBert, -1
	object_event 15,  8, SPRITE_YOUNGSTER, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_TRAINER, 1, TrainerBirdKeeperErnie, -1
	object_event 20, 11, SPRITE_SWIMMER_GUY, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 3, TrainerSwimmermLuis, -1
	object_event  8, 10, SPRITE_SWIMMER_GUY, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 3, TrainerSwimmermElmo, -1
	object_event 24, 14, SPRITE_SWIMMER_GIRL, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_TRAINER, 3, TrainerSwimmerfMina, -1
	object_event 33, 16, SPRITE_SWIMMER_GIRL, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_TRAINER, 3, TrainerSwimmerfLeona, -1
