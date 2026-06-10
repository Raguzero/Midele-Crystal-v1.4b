	const_def 2 ; object constants
	const VIRIDIANGYM_BLUE
	const VIRIDIANGYM_GYM_GUY
	const VIRIDIANGYM_COOLTRAINERM1
	const VIRIDIANGYM_COOLTRAINERF1
	const VIRIDIANGYM_COOLTRAINERM2
	const VIRIDIANGYM_COOLTRAINERF2

ViridianGym_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks

ViridianGymBlueScript:
	faceplayer
	opentext
	checkflag ENGINE_EARTHBADGE
	iftrue .FightDone
	writetext LeaderBlueBeforeText
	waitbutton
	closetext
	winlosstext LeaderBlueWinText, 0
	loadtrainer BLUE, BLUE1
	startbattle
	reloadmapafterbattle
	setevent EVENT_BEAT_BLUE
	opentext
	writetext Text_ReceivedEarthBadge
	playsound SFX_GET_BADGE
	waitsfx
	setflag ENGINE_EARTHBADGE
	writetext LeaderBlueAfterText
	waitbutton
	closetext
	end

.FightDone:
	writetext LeaderBlueEpilogueText
	waitbutton
	checkevent EVENT_BEAT_ZZZ3
	iffalse .Refused
	checkevent EVENT_BLUE_REMATCH
	iftrue .BlueRematch
    closetext
    end

.BlueRematch:
	opentext
	writetext Blue_Rematch
    yesorno
	iffalse .Refused
    winlosstext Blue_RematchDefeat, 0
    loadtrainer BLUE, 2
    startbattle
    reloadmapafterbattle
	opentext
	writetext Blue_Reward
	waitbutton
	verbosegiveitem GOLD_LEAF, 3
	closetext
	clearevent EVENT_BLUE_REMATCH
    end
	
.Refused:
	closetext
	end
	
TrainerCooltrainermArabella:
	trainer COOLTRAINERM, ARABEL, EVENT_BEAT_COOLTRAINERM_ARABELLA, CooltrainermArabellaSeenText, CooltrainermArabellaBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext CooltrainermArabellaAfterBattleText
	waitbutton
	closetext
	end
	
TrainerCooltrainerfSalma:
	trainer COOLTRAINERF, SALMA, EVENT_BEAT_COOLTRAINERF_SALMA, CooltrainerfSalmaSeenText, CooltrainerfSalmaBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext CooltrainerfSalmaAfterBattleText
	waitbutton
	closetext
	end
	
TrainerCooltrainermBonita:
	trainer COOLTRAINERM, BONITA, EVENT_BEAT_COOLTRAINERM_BONITA, CooltrainermBonitaSeenText, CooltrainermBonitaBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext CooltrainermBonitaAfterBattleText
	waitbutton
	closetext
	end
	
TrainerCooltrainerfElan:
	trainer COOLTRAINERF, ELAN, EVENT_BEAT_COOLTRAINERF_ELAN, CooltrainerfElanSeenText, CooltrainerfElanBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext CooltrainerfElanAfterBattleText
	waitbutton
	closetext
	end

ViridianGymGuyScript:
	faceplayer
	opentext
	checkevent EVENT_BEAT_BLUE
	iftrue .ViridianGymGuyWinScript
	writetext ViridianGymGuyText
	waitbutton
	closetext
	end

.ViridianGymGuyWinScript:
	writetext ViridianGymGuyWinText
	waitbutton
	closetext
	end

ViridianGymStatue:
	checkflag ENGINE_EARTHBADGE
	iftrue .Beaten
	jumpstd gymstatue1

.Beaten:
	trainertotext BLUE, BLUE1, MEM_BUFFER_1
	jumpstd gymstatue2

LeaderBlueBeforeText:
	text "BLUE: Yo! Finally"
	line "got here, huh?"

	para "I wasn't in the"
	line "mood at CINNABAR,"

	para "but now I'm ready"
	line "to battle you."

	para "…"

	para "You're telling me"
	line "you conquered all"
	cont "the GYMS in JOHTO?"

	para "Heh! JOHTO's GYMS"
	line "must be pretty"
	cont "pathetic then."

	para "Hey, don't worry"
	line "about it."

	para "I'll know if you"
	line "are good or not by"

	para "battling you right"
	line "now."

	para "Ready, JOHTO"
	line "CHAMP?"
	done

LeaderBlueWinText:
	text "BLUE: What?"

	para "How the heck did I"
	line "lose to you?"

	para "…"

	para "Tch, all right…"
	line "Here, take this--"
	cont "it's EARTHBADGE."
	done

Text_ReceivedEarthBadge:
	text "<PLAYER> received"
	line "EARTHBADGE."
	done

LeaderBlueAfterText:
	text "BLUE: …"

	para "All right, I was"
	line "wrong. You're the"

	para "real deal. You are"
	line "a good trainer."

	para "But I'm going to"
	line "beat you someday."

	para "Don't you forget"
	line "it!"
	done

LeaderBlueEpilogueText:
	text "BLUE: Listen, you."

	para "You'd better not"
	line "lose until I beat"
	cont "you. Got it?"
	done

ViridianGymGuyText:
	text "Yo, CHAMP in"
	line "making!"

	para "How's it going?"
	line "Looks like you're"
	cont "on a roll."

	para "The GYM LEADER is"
	line "a guy who battled"

	para "the CHAMPION three"
	line "years ago."

	para "He's no pushover."

	para "Give it everything"
	line "you've got!"
	done

ViridianGymGuyWinText:
	text "Man, you are truly"
	line "tough…"

	para "That was a heck of"
	line "an inspirational"

	para "battle. It brought"
	line "tears to my eyes."
	done

Blue_Rematch:
    text "On the other hand."
    line "The promise"
	cont "we made!" 
	cont "Let's battle again!"
	done

Blue_RematchDefeat:
    text "Oh no! You are"
	line "very strong!"
	cont "But I will repay"
	para "my debt someday."

    para "Talk to me again"
    line "if you want a"
    cont "rematch."
    done

Blue_Reward:
    text "Take your reward!"
    done
	
CooltrainermArabellaSeenText:
	text "Anyway, fight me"
	line "and see!"
	done

CooltrainermArabellaBeatenText:
	text "I was deceived!"
	done

CooltrainermArabellaAfterBattleText:
	text "Me, I should be a"
	line "pretty good"
	cont "practice partner…"
	done
	
CooltrainerfSalmaSeenText:
	text "You've never seen"
	line "such a wonderful"
	cont "Gym before,"
	cont "have you?"
	done

CooltrainerfSalmaBeatenText:
	text "Whatever!"
	done

CooltrainerfSalmaAfterBattleText:
	text "There are many"
	line "kinds of Gyms in"
	cont "the world, but I"
	cont "really like this"
	cont "one!"
	done
	
CooltrainermBonitaSeenText:
	text "Looking around the"
	line "room like that,"
	cont "doesn't it make"
	cont "you a little"
	cont "dizzy?"
	done

CooltrainermBonitaBeatenText:
	text "All of my Pokémon…"
	line "All dizzy and"
	cont "fainting…"
	done

CooltrainermBonitaAfterBattleText:
	text "Looks like you've"
	line "still got some"
	cont "energy left."
	done
	
CooltrainerfElanSeenText:
	text "All right, let's"
	line "get this fight"
	cont "started!"
	done

CooltrainerfElanBeatenText:
	text "Phew…"
	done

CooltrainerfElanAfterBattleText:
	text "Huh? Not enough"
	line "Pokémon?"
	done

ViridianGym_MapEvents:
	db 0, 0 ; filler

	db 2 ; warp events
	warp_event  4, 17, VIRIDIAN_CITY, 1
	warp_event  5, 17, VIRIDIAN_CITY, 1

	db 0 ; coord events

	db 2 ; bg events
	bg_event  3, 13, BGEVENT_READ, ViridianGymStatue
	bg_event  6, 13, BGEVENT_READ, ViridianGymStatue

	db 6 ; object events
	object_event  5,  3, SPRITE_BLUE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ViridianGymBlueScript, EVENT_VIRIDIAN_GYM_BLUE
	object_event  7, 13, SPRITE_GYM_GUY, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, ViridianGymGuyScript, EVENT_VIRIDIAN_GYM_BLUE
	object_event  3, 10, SPRITE_COOLTRAINER_M, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 2, TrainerCooltrainermArabella, -1
	object_event  6, 11, SPRITE_COOLTRAINER_F, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 2, TrainerCooltrainerfSalma, -1
	object_event  3,  7, SPRITE_COOLTRAINER_M, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 1, TrainerCooltrainermBonita, -1
	object_event  5,  6, SPRITE_COOLTRAINER_F, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 2, TrainerCooltrainerfElan, -1
