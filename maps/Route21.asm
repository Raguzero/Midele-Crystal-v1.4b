	const_def 2 ; object constants
	const ROUTE21_SWIMMER_GIRL
	const ROUTE21_SWIMMER_GUY
	const ROUTE21_FISHER
	const ROUTE21_SWIMMER_GIRL2
	const ROUTE21_SWIMMER_GIRL3
	const ROUTE21_SWIMMER_GUY2
	const ROUTE21_SWIMMER_GUY3
	const ROUTE21_FISHER2
	const ROUTE21_FISHER3
	const ROUTE21_FISHER4
	const ROUTE21_BIRDKEEPER1
	const ROUTE21_BIRDKEEPER2

Route21_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks

TrainerSwimmermSeth:
	trainer SWIMMERM, SETH, EVENT_BEAT_SWIMMERM_SETH, SwimmermSethSeenText, SwimmermSethBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext SwimmermSethAfterBattleText
	waitbutton
	closetext
	end

TrainerSwimmerfNikki:
	trainer SWIMMERF, NIKKI, EVENT_BEAT_SWIMMERF_NIKKI, SwimmerfNikkiSeenText, SwimmerfNikkiBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext SwimmerfNikkiAfterBattleText
	waitbutton
	closetext
	end

TrainerFisherArnold:
	trainer FISHER, ARNOLD, EVENT_BEAT_FISHER_ARNOLD, FisherArnoldSeenText, FisherArnoldBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext FisherArnoldAfterBattleText
	waitbutton
	closetext
	end
	
TrainerSwimmerfChelan:
	trainer SWIMMERF, CHELAN, EVENT_BEAT_SWIMMERF_CHELAN, SwimmerfChelanSeenText, SwimmerfChelanBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext SwimmerfChelanAfterBattleText
	waitbutton
	closetext
	end
	
TrainerSwimmerfKendra:
	trainer SWIMMERF, KENDRA, EVENT_BEAT_SWIMMERF_KENDRA, SwimmerfKendraSeenText, SwimmerfKendraBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext SwimmerfKendraAfterBattleText
	waitbutton
	closetext
	end
	
TrainerSwimmermEsteban:
	trainer SWIMMERM, ESTEBAN, EVENT_BEAT_SWIMMERM_ESTEBAN, SwimmermEstebanSeenText, SwimmermEstebanBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext SwimmermEstebanAfterBattleText
	waitbutton
	closetext
	end
	
TrainerSwimmermDuane:
	trainer SWIMMERM, DUANE, EVENT_BEAT_SWIMMERM_DUANE, SwimmermDuaneSeenText, SwimmermDuaneBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext SwimmermDuaneAfterBattleText
	waitbutton
	closetext
	end
	
TrainerFisherMurphy:
	trainer FISHER, MURPHY, EVENT_BEAT_FISHER_MURPHY, FisherMurphySeenText, FisherMurphyBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext FisherMurphyAfterBattleText
	waitbutton
	closetext
	end
	
TrainerFisherLiam:
	trainer FISHER, LIAM, EVENT_BEAT_FISHER_LIAM, FisherLiamSeenText, FisherLiamBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext FisherLiamAfterBattleText
	waitbutton
	closetext
	end
	
TrainerFisherGideon
	trainer FISHER, GIDEON, EVENT_BEAT_FISHER_GIDEON, FisherGideonSeenText, FisherGideonBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext FisherGideonAfterBattleText
	waitbutton
	closetext
	end
	
TrainerBirdkeeperKinsley:
	trainer BIRD_KEEPER, KINSLEY, EVENT_BEAT_BIRD_KEEPER_KINSLEY, BirdkeeperKinsleySeenText, BirdkeeperKinsleyBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext BirdkeeperKinsleyAfterBattleText
	waitbutton
	closetext
	end
	
TrainerBirdkeeperEaston:
	trainer BIRD_KEEPER, EASTON, EVENT_BEAT_BIRD_KEEPER_EASTON, BirdkeeperEastonSeenText, BirdkeeperEastonBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext BirdkeeperEastonAfterBattleText
	waitbutton
	closetext
	end

SwimmermSethSeenText:
	text "Land ho! Gotta"
	line "keep going!"
	done

SwimmermSethBeatenText:
	text "Glug…"
	done

SwimmermSethAfterBattleText:
	text "This arrogant guy"
	line "was at CINNABAR's"
	cont "volcano."
	done

SwimmerfNikkiSeenText:
	text "If I win, you have"
	line "to help me with my"
	cont "suntan lotion!"
	done

SwimmerfNikkiBeatenText:
	text "I'm worried about"
	line "sunburn…"
	done

SwimmerfNikkiAfterBattleText:
	text "I have to watch"
	line "out for blemishes"
	cont "caused by the sun."
	done

FisherArnoldSeenText:
	text "I'm bored by fish-"
	line "ing. Let's battle!"
	done

FisherArnoldBeatenText:
	text "Utter failure…"
	done

FisherArnoldAfterBattleText:
	text "I'll just go back"
	line "to fishing…"
	done
	
SwimmerfKendraSeenText:
	text "Hey, Trainer!"
	line "How about you put"
	cont "on a swimsuit,"
	cont "too?"
	done

SwimmerfKendraBeatenText:
	text "I didn't want"
	line "to lose…"
	done

SwimmerfKendraAfterBattleText:
	text "I wonder if there's"
	line "any place that"
	cont "sells swimsuits"
	cont "that suit my"
	cont "Pokémon?"
	done
	
SwimmerfChelanSeenText:
	text "I love bikinis!"
	line "If I had an"
	cont "electric bikini,"
	cont "I could wear fit"
	cont "even in winter!"
	done

SwimmerfChelanBeatenText:
	text "Awww…"
	done

SwimmerfChelanAfterBattleText:
	text "I suppose if you"
	line "tried to swim in"
	cont "an electric"
	cont "bikini, you'd get"
	cont "a shock!"
	done
	
SwimmermEstebanSeenText:
	text "The teacher from"
	line "the swimming class"
	cont "where I learned to"
	cont "swim had a face"
	cont "just like a"
	cont "POLIWHIRL."
	done

SwimmermEstebanBeatenText:
	text "I'm sorry, Teacher…"
	done

SwimmermEstebanAfterBattleText:
	text "Due to the"
	line "incredible"
	cont "resemblance,"
	cont "we called our"
	cont "teacher Professor"
	cont "POLIWHIRL!"
	done
	
SwimmermDuaneSeenText:
	text "Swimming is a"
	line "full-body"
	cont "exercise, so"
	cont "it's really good"
	cont "for building"
	cont "strength!"
	done

SwimmermDuaneBeatenText:
	text "My Pokémon and I"
	line "have no body"
	cont "strength…"
	done

SwimmermDuaneAfterBattleText:
	text "To win more, I"
	line "need to work on"
	cont "my stamina!"
	done
	
FisherMurphySeenText:
	text "Huh? I've caught"
	line "a Trainer instead"
	cont "of a Pokémon!"
	done

FisherMurphyBeatenText:
	text "My fishing line"
	line "got cut!"
	done

FisherMurphyAfterBattleText:
	text "It's said that"
	line "the Pokémon that"
	cont "escaped were huge."

	para "It's the truth!"
	done
	
FisherLiamSeenText:
	text "Whoa! A nibble!…"
	line "Huh? A battle?"
	cont "OK, let's go!"
	done

FisherLiamBeatenText:
	text "If you try to"
	line "chase two Pokémon,"
	cont "you won't catch"
	cont "either one!"
	done

FisherLiamAfterBattleText:
	text "I should've asked"
	line "you to wait until"
	cont "I reeled that"
	cont "Pokémon in…"
	done
	
FisherGideonSeenText:
	text "Question is…did I"
	line "become a fisherman"
	cont "because I'm"
	cont "patient, or did I"
	cont "get more patient"
	cont "because I'm a"
	cont "fisherman?"
	done

FisherGideonBeatenText:
	text "Ummm… Hmmm…"
	done

FisherGideonAfterBattleText:
	text "What's the reason"
	line "you became a"
	cont "Pokémon Trainer?"
	done
	
BirdkeeperKinsleySeenText:
	text "Surrounding"
	line "yourself"
	cont "with bird Pokémon"
	cont "gives you the"
	cont "feeling that"
	cont "someday you might"
	cont "be able to fly,"
	cont "too!"
	done

BirdkeeperKinsleyBeatenText:
	text "I couldn't…"
	done

BirdkeeperKinsleyAfterBattleText:
	text "I guess I just"
	line "need to practice"
	cont "flapping my wings"
	cont "more!"
	done
	
BirdkeeperEastonSeenText:
	text "Bird Keepers are"
	line "so wonderful with"
	cont "their bird"
	cont "Pokémon!"
	done

BirdkeeperEastonBeatenText:
	text "I couldn't handle"
	line "it…"
	done

BirdkeeperEastonAfterBattleText:
	text "We Bird Keepers"
	line "think we're using"
	cont "bird Pokémon."
	
	para "But somewhere"
	line "along the line,"
	cont "the bird Pokémon"
	cont "started using"
	cont "us…"
	done

Route21_MapEvents:
	db 0, 0 ; filler

	db 0 ; warp events

	db 0 ; coord events

	db 0 ; bg events

	db 12 ; object events
	object_event 14, 12, SPRITE_SWIMMER_GIRL, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 3, TrainerSwimmerfNikki, -1
	object_event  2, 30, SPRITE_SWIMMER_GUY, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 4, TrainerSwimmermSeth, -1
	object_event 14, 22, SPRITE_FISHER, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_TRAINER, 1, TrainerFisherArnold, -1
	object_event  3, 21, SPRITE_SWIMMER_GIRL, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 3, TrainerSwimmerfChelan, -1
	object_event  6, 31, SPRITE_SWIMMER_GIRL, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 3, TrainerSwimmerfKendra, -1
	object_event 11, 26, SPRITE_SWIMMER_GUY, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 3, TrainerSwimmermEsteban, -1
	object_event 16, 29, SPRITE_SWIMMER_GUY, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_TRAINER, 4, TrainerSwimmermDuane, -1
	object_event  3, 14, SPRITE_FISHER, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_TRAINER, 1, TrainerFisherMurphy, -1
	object_event 15, 15, SPRITE_FISHER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 1, TrainerFisherLiam, -1
	object_event 17, 23, SPRITE_FISHER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 1, TrainerFisherGideon, -1
	object_event  5, 15, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 1, TrainerBirdkeeperKinsley, -1
	object_event 17, 14, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 1, TrainerBirdkeeperEaston, -1
