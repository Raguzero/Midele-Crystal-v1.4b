	const_def 2 ; object constants
	const ROUTE3_FISHER1
	const ROUTE3_YOUNGSTER1
	const ROUTE3_YOUNGSTER2
	const ROUTE3_FISHER2
	const ROUTE3_YOUNGSTER3
	const ROUTE3_BLACK_BELT1
	const ROUTE3_BLACK_BELT2
	const ROUTE3_HIKER1
	const ROUTE3_HIKER2

Route3_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks

TrainerFirebreatherOtis:
	trainer FIREBREATHER, OTIS, EVENT_BEAT_FIREBREATHER_OTIS, FirebreatherOtisSeenText, FirebreatherOtisBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext FirebreatherOtisAfterBattleText
	waitbutton
	closetext
	end

TrainerYoungsterWarren:
	trainer YOUNGSTER, WARREN, EVENT_BEAT_YOUNGSTER_WARREN, YoungsterWarrenSeenText, YoungsterWarrenBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext YoungsterWarrenAfterBattleText
	waitbutton
	closetext
	end

TrainerYoungsterJimmy:
	trainer YOUNGSTER, JIMMY, EVENT_BEAT_YOUNGSTER_JIMMY, YoungsterJimmySeenText, YoungsterJimmyBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext YoungsterJimmyAfterBattleText
	waitbutton
	closetext
	end

TrainerFirebreatherBurt:
	trainer FIREBREATHER, BURT, EVENT_BEAT_FIREBREATHER_BURT, FirebreatherBurtSeenText, FirebreatherBurtBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext FirebreatherBurtAfterBattleText
	waitbutton
	closetext
	end
	
TrainerYoungsterRegis:
	trainer YOUNGSTER, REGIS, EVENT_BEAT_YOUNGSTER_REGIS, YoungsterRegisSeenText, YoungsterRegisBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext YoungsterRegisAfterBattleText
	waitbutton
	closetext
	end
	
TrainerBlackBeltAnder:
	trainer BLACKBELT_T, ANDER, EVENT_BEAT_BLACKBELT_ANDER, BlackBeltAnderSeenText, BlackBeltAnderBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext BlackBeltAnderAfterBattleText
	waitbutton
	closetext
	end
	
TrainerBlackBeltManford:
	trainer BLACKBELT_T, MANFORD, EVENT_BEAT_BLACKBELT_MANFORD, BlackBeltManfordSeenText, BlackBeltManfordBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext BlackBeltManfordAfterBattleText
	waitbutton
	closetext
	end
	
TrainerHikerBruce:
	trainer HIKER, BRUCE, EVENT_BEAT_HIKER_BRUCE, HikerBruceSeenText, HikerBruceBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext HikerBruceAfterBattleText
	waitbutton
	closetext
	end
	
TrainerHikerDwight:
	trainer HIKER, DWIGHT, EVENT_BEAT_HIKER_DWIGHT, HikerDwightSeenText, HikerDwightBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext HikerDwightAfterBattleText
	waitbutton
	closetext
	end

Route3MtMoonSquareSign:
	jumptext Route3MtMoonSquareSignText

FirebreatherOtisSeenText:
	text "Ah! The weather's"
	line "as fine as ever."
	done

FirebreatherOtisBeatenText:
	text "It's sunny, but"
	line "I'm all wet…"
	done

FirebreatherOtisAfterBattleText:
	text "When it rains,"
	line "it's hard to get"
	cont "ignition…"
	done

YoungsterWarrenSeenText:
	text "Hmmm… I don't know"
	line "what to do…"
	done

YoungsterWarrenBeatenText:
	text "I knew I'd lose…"
	done

YoungsterWarrenAfterBattleText:
	text "You looked strong."

	para "I was afraid to"
	line "take you on…"
	done

YoungsterJimmySeenText:
	text "I can run like the"
	line "wind!"
	done

YoungsterJimmyBeatenText:
	text "Blown away!"
	done

YoungsterJimmyAfterBattleText:
	text "I wear shorts the"
	line "whole year round."

	para "That's my fashion"
	line "policy."
	done

FirebreatherBurtSeenText:
	text "Step right up and"
	line "take a look!"
	done

FirebreatherBurtBeatenText:
	text "Yow! That's hot!"
	done

FirebreatherBurtAfterBattleText:
	text "The greatest fire-"
	line "breather in KANTO,"
	cont "that's me."

	para "But not the best"
	line "trainer…"
	done
	
YoungsterRegisSeenText:
	text "Youngster?"
	line "Goodness,"
	cont "how rude!"
	
	para "Call me Shorts"
	line "Boy!"
	done

YoungsterRegisBeatenText:
	text "That is…"
	line "Fail Boy…"
	done

YoungsterRegisAfterBattleText:
	text "Looks like I need"
	line "a bit more"
	cont "training!"
	done
	
BlackBeltAnderSeenText:
	text "Wait a moment!"
	line "Come fight us!"
	done

BlackBeltAnderBeatenText:
	text "You did it…"
	done

BlackBeltAnderAfterBattleText:
	text "You came all the"
	line "way from Johto?"
	
	para "You must be very"
	line "persistent!"
	done
	
BlackBeltManfordSeenText:
	text "How about you just"
	line "slow down and give"
	cont "me the chance to"
	cont "defeat you!"
	done

BlackBeltManfordBeatenText:
	text "Looks like I've"
	line "been beaten at my"
	cont "own game…"
	done

BlackBeltManfordAfterBattleText:
	text "Even though you're"
	line "so young, you have"
	cont "the spirit of"
	cont "battle within."
	
	para "You must have"
	line "trained under a"
	cont "well-known master!"
	done
	
HikerBruceSeenText:
	text "My Bag is digging"
	line "into my shoulders!"
	
	para "When that happens,"
	line "I like to take a"
	cont "break and have a"
	cont "battle."
	done

HikerBruceBeatenText:
	text "Feh."
	done

HikerBruceAfterBattleText:
	text "All right, guess I"
	line "should carry my"
	cont "Bag again!"
	done
	
HikerDwightSeenText:
	text "Peace!……Huh?"
	
	para "When you meet the"
	line "unknown on a"
	cont "mountain road,"
	cont "all you want is"
	cont "peace, right?"
	done

HikerDwightBeatenText:
	text "Peace--even though"
	line "I lost!"
	done

HikerDwightAfterBattleText:
	text "Exchanging"
	line "lighthearted"
	cont "greetings with"
	cont "someone you don't"
	cont "know…"
	
	para "That's the best"
	line "thing about"
	cont "mountain!"
	done

Route3MtMoonSquareSignText:
	text "MT.MOON SQUARE"

	para "Just go up the"
	line "stairs."
	done

Route3_MapEvents:
	db 0, 0 ; filler

	db 1 ; warp events
	warp_event 52,  1, MOUNT_MOON, 1

	db 0 ; coord events

	db 1 ; bg events
	bg_event 49, 13, BGEVENT_READ, Route3MtMoonSquareSign

	db 9 ; object events
	object_event 26, 12, SPRITE_FISHER, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 2, TrainerFirebreatherOtis, -1
	object_event 10,  7, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 3, TrainerYoungsterWarren, -1
	object_event 16,  3, SPRITE_YOUNGSTER, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 1, TrainerYoungsterJimmy, -1
	object_event 49,  5, SPRITE_FISHER, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 3, TrainerFirebreatherBurt, -1
	object_event 19,  2, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_TRAINER, 3, TrainerYoungsterRegis, -1
	object_event 42, 15, SPRITE_BLACK_BELT, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 1, TrainerBlackBeltAnder, -1
	object_event 36, 13, SPRITE_BLACK_BELT, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 3, TrainerBlackBeltManford, -1
	object_event 33,  6, SPRITE_FISHER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 1, TrainerHikerDwight, -1
	object_event 47, 14, SPRITE_FISHER, SPRITEMOVEDATA_SPINRANDOM_FAST,  0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 4, TrainerHikerBruce, -1
