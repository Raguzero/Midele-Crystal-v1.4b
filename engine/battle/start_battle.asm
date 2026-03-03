ShowLinkBattleParticipants: ; 2ee18
; If we're not in a communications room,
; we don't need to be here.
	ld a, [wLinkMode]
	and a
	ret z

	farcall _ShowLinkBattleParticipants
	ld c, 150
	call DelayFrames
	call ClearTileMap
	call ClearSprites
	ret

FindFirstAliveMonAndStartBattle: ; 2ee2f
	xor a
	ld [hMapAnims], a
	call DelayFrame
	ld b, 6
	ld hl, wPartyMon1HP
	ld de, PARTYMON_STRUCT_LENGTH - 1

.loop
	ld a, [hli]
	or [hl]
	jp nz, .okay
	add hl, de
	dec b
	jp nz, .loop

.okay
	ld de, MON_LEVEL - MON_HP
	add hl, de
	ld a, [hl]
	ld [wBattleMonLevel], a
	predef DoBattleTransition
	farcall _LoadBattleFontsHPBar
	ld a, 1
	ld [hBGMapMode], a
	call ClearSprites
	call ClearTileMap
	xor a
	ld [hBGMapMode], a
	ld [hWY], a
	ld [rWY], a
	ld [hMapAnims], a
	ret

PlayBattleMusic: ; 2ee6c
	push hl
	push de
	push bc

	xor a
	ld [wMusicFade], a
	ld de, MUSIC_NONE
	call PlayMusic
	call DelayFrame
	call MaxVolume

	ld a, [wCustomBattleMusic]
	cp 0
	jr z, .regular_music
	ld d, 0
	ld e, a
	jp .done
	
.regular_music
	ld a, [wBattleType]
	cp BATTLETYPE_SUICUNE
	ld de, MUSIC_SUICUNE_BATTLE
	jp z, .done
	cp BATTLETYPE_ROAMING
	jp z, .done
	; NUEVO MUSICA LEGENDARRIO PARA CELEBI
	cp BATTLETYPE_CELEBI
    jp z, .done
	; NUEVO MUSICA LEGENDARRIO PARA CELEBI

	; Are we fighting a trainer?
	ld a, [wOtherTrainerClass]
	and a
	jp nz, .trainermusic

	farcall RegionCheck
	ld a, e
	and a
	jp nz, .kantowild

	ld de, MUSIC_JOHTO_WILD_BATTLE
	ld a, [wTimeOfDay]
	cp NITE_F
	jp nz, .done
	ld de, MUSIC_JOHTO_WILD_BATTLE_NIGHT
	jp .done

.kantowild
	ld de, MUSIC_KANTO_WILD_BATTLE
	jp .done

.trainermusic
	ld de, MUSIC_CHAMPION_BATTLE
	cp CHAMPION
	jp z, .done
	ld de, MUSIC_FINALBATTLE
	cp RED
	jp z, .done
	; NUEVO MUSICAS
	ld de, MUSIC_ELITEFOURUNOVA
	cp WILL
	jp z, .done
	ld de, MUSIC_ELITEFOURUNOVA
	cp KOGA
	jp z, .done
	ld de, MUSIC_ELITEFOURUNOVA
	cp BRUNO
	jp z, .done
	ld de, MUSIC_ELITEFOURUNOVA
	cp KAREN
	jp z, .done

	ld a, [wOtherTrainerClass]
	ld de, MUSIC_LOOKZINNIA
	cp SCIENTIST
	jr nz, .not_avader
	ld a, [wOtherTrainerID]
	cp AVADER
	jp z, .done
	ld a, [wOtherTrainerClass]
.not_avader

	ld a, [wOtherTrainerClass]
	ld de, MUSIC_ZINNIABATTLE
	cp SCIENTIST
	jr nz, .not_phent
	ld a, [wOtherTrainerID]
	cp PHENT
	jp z, .done
	ld a, [wOtherTrainerClass]
.not_phent
	; NUEVO MUSICAS

	; They should have included EXECUTIVEM, EXECUTIVEF, and SCIENTIST too...
	ld de, MUSIC_ROCKET_BATTLE
	cp GRUNTM
	jp z, .done
	cp GRUNTF
	jp z, .done
	cp EXECUTIVEM
	jp z, .done
	cp EXECUTIVEF
	jp z, .done
	cp SCIENTIST
	jp z, .done

	ld de, MUSIC_KANTO_GYM_LEADER_BATTLE
	farcall IsKantoGymLeader
	jp c, .done

	; IsGymLeader also counts CHAMPION, RED, and the Kanto gym leaders
	; but they have been taken care of before this
	ld de, MUSIC_JOHTO_GYM_LEADER_BATTLE
	farcall IsGymLeader
	jp c, .done

	ld de, MUSIC_RIVAL_BATTLE
	ld a, [wOtherTrainerClass]
	cp RIVAL1
	jp z, .done
	cp RIVAL2
	jp nz, .othertrainer

	ld a, [wOtherTrainerID]
	cp RIVAL2_2_CHIKORITA ; Rival in Indigo Plateau
	jp c, .done
	;ld de, MUSIC_CHAMPION_BATTLE
	ld de, MUSIC_RIVAL_BATTLE
	jp .done

.othertrainer
	; Custom trainer music  ;NUEVO
	; Save bc, store wOtherTrainerID at b
	; and wOtherTrainerClass at c
	push bc
	ld a, [wOtherTrainerID]
	ld b, a
	ld a, [wOtherTrainerClass]
	ld c, a

	;;;;;;;;
	; Load trainer class at a
	ld a, c

	; If the trainer is not from SCIENTIST trainer class,
	; continue to next trainer
	cp SUPER_NERD
	jr nz, .not_goldy

	; Load trainer id at a
	; Load music at de
	ld a, b
	ld de, MUSIC_CHAMPIONBATTLE_B2W2
	; If the trainer id matches, done
	cp GOLDY
	jp z, .done_custom_music
.not_goldy

	;;;;;;;;
	; Load trainer class at a
	ld a, c

	; If the trainer is not from SCIENTIST trainer class,
	; continue to next trainer
	cp SUPER_NERD
	jr nz, .not_darki

	; Load trainer id at a
	; Load music at de
	ld a, b
	ld de, MUSIC_XYLEGENDBATTLE
	; If the trainer id matches, done
	cp DARKI
	jp z, .done_custom_music
.not_darki
	;;;;;;;

	;;;;;;;;
	; Load trainer class at a
	ld a, c

	; If the trainer is not from SCIENTIST trainer class,
	; continue to next trainer
	cp COOLTRAINERM
	jr nz, .not_ragu

	; Load trainer id at a
	; Load music at de
	ld a, b
	ld de, MUSIC_CIPHERPEONBATTLE
	; If the trainer id matches, done
	cp RAGU
	jp z, .done_custom_music
.not_ragu
	;;;;;;;
	
	;;;;;;;;
	; Load trainer class at a
	ld a, c

	; If the trainer is not from SCIENTIST trainer class,
	; continue to next trainer
	cp CAMPER
	jr nz, .not_exi

	; Load trainer id at a
	; Load music at de
	ld a, b
	ld de, MUSIC_SANTALUNE
	; If the trainer id matches, done
	cp EXI
	jp z, .done_custom_music
.not_exi
	;;;;;;;
	
	;;;;;;;;
	; Load trainer class at a
	ld a, c

	; If the trainer is not from SCIENTIST trainer class,
	; continue to next trainer
	cp FISHER
	jr nz, .not_kaisser

	; Load trainer id at a
	; Load music at de
	ld a, b
	ld de, MUSIC_HEARTMULHOLLAND
	; If the trainer id matches, done
	cp KAISSER
	jp z, .done_custom_music
.not_kaisser
	;;;;;;;
	
	;;;;;;;;
	; Load trainer class at a
	ld a, c

	; If the trainer is not from SCIENTIST trainer class,
	; continue to next trainer
	cp BEAUTY
	jr nz, .not_entropia

	; Load trainer id at a
	; Load music at de
	ld a, b
	ld de, MUSIC_EVERGRANDECITY
	; If the trainer id matches, done
	cp ENTROPIA
	jp z, .done_custom_music
.not_entropia
	;;;;;;;

	;;;;;;;;
	; Load trainer class at a
	ld a, c

	; If the trainer is not from SCIENTIST trainer class,
	; continue to next trainer
	cp COOLTRAINERM
	jr nz, .not_shelea

	; Load trainer id at a
	; Load music at de
	ld a, b
	ld de, MUSIC_CHAMPIONBATTLEDPPT
	; If the trainer id matches, done
	cp SHELEA
	jp z, .done_custom_music
.not_shelea
	;;;;;;;

	;;;;;;;;
	; Load trainer class at a
	ld a, c

	; If the trainer is not from SCIENTIST trainer class,
	; continue to next trainer
	cp COOLTRAINERF
	jr nz, .not_sapph

	; Load trainer id at a
	; Load music at de
	ld a, b
	ld de, MUSIC_RIVALBATTLE_XY
	; If the trainer id matches, done
	cp SAPPH
	jp z, .done_custom_music
.not_sapph
	;;;;;;;

	;;;;;;;;
	; Load trainer class at a
	ld a, c

	; If the trainer is not from SCIENTIST trainer class,
	; continue to next trainer
	cp POKEMANIAC
	jr nz, .not_lavnder

	; Load trainer id at a
	; Load music at de
	ld a, b
	ld de, MUSIC_LOOKGLADION
	; If the trainer id matches, done
	cp LAVNDER
	jr z, .done_custom_music
.not_lavnder
	;;;;;;;

	;;;;;;;;
	; Load trainer class at a
	ld a, c

	; If the trainer is not from SCIENTIST trainer class,
	; continue to next trainer
	cp MASTERMIND
	jr nz, .not_micolo

	; Load trainer id at a
	; Load music at de
	ld a, b
	ld de, MUSIC_MOTHERBEASTBATTLE
	; If the trainer id matches, done
	cp MICOLO
	jr z, .done_custom_music
.not_micolo
	;;;;;;;

	;;;;;;;;
	; Load trainer class at a
	ld a, c

	; If the trainer is not from SCIENTIST trainer class,
	; continue to next trainer
	cp COOLTRAINERM
	jr nz, .not_denys

	; Load trainer id at a
	; Load music at de
	ld a, b
	ld de, MUSIC_MAXIEARCHIEBATTLE
	; If the trainer id matches, done
	cp DENYS
	jr z, .done_custom_music
.not_denys
	;;;;;;;

	;;;;;;;;
	; Load trainer class at a
	ld a, c

	; If the trainer is not from SCIENTIST trainer class,
	; continue to next trainer
	cp PSYCHIC_T
	jr nz, .not_santyago

	; Load trainer id at a
	; Load music at de
	ld a, b
	ld de, MUSIC_WALLYBATTLE
	; If the trainer id matches, done
	cp SANTYAGO
	jr z, .done_custom_music
.not_santyago
	;;;;;;;
	
	;;;;;;;;
	; Load trainer class at a
	ld a, c

	; If the trainer is not from SCIENTIST trainer class,
	; continue to next trainer
	cp PSYCHIC_T
	jr nz, .not_santyago2

	; Load trainer id at a
	; Load music at de
	ld a, b
	ld de, MUSIC_WALLYBATTLE
	; If the trainer id matches, done
	cp SANTYAGO2
	jr z, .done_custom_music
.not_santyago2
	;;;;;;;

	;;;;;;;;
	; Load trainer class at a
	ld a, c

	; If the trainer is not from SCIENTIST trainer class,
	; continue to next trainer
	cp JUGGLER
	jr nz, .not_utalawea

	; Load trainer id at a
	; Load music at de
	ld a, b
	ld de, MUSIC_GAMECORNER_SINNOH
	; If the trainer id matches, done
	cp UTALAWEA
	jr z, .done_custom_music
.not_utalawea
	;;;;;;;
	
	;;;;;;;;
	; Load trainer class at a
	ld a, c

	; If the trainer is not from SCIENTIST trainer class,
	; continue to next trainer
	cp HIKER
	jr nz, .not_merum

	; Load trainer id at a
	; Load music at de
	ld a, b
	ld de, MUSIC_ALOLAELITEFOURBATTLE
	; If the trainer id matches, done
	cp MERUM
	jr z, .done_custom_music
.not_merum
	;;;;;;;

	;;;;;;;;
	; Load trainer class at a
	ld a, c

	; If the trainer is not from SCIENTIST trainer class,
	; continue to next trainer
	cp SWIMMERM
	jr nz, .not_pacobeer

	; Load trainer id at a
	; Load music at de
	ld a, b
	ld de, MUSIC_LASTPOKEMON
	; If the trainer id matches, done
	cp PACOBEER
	jr z, .done_custom_music
.not_pacobeer

	;;;;;;;;
	; Load trainer class at a
	ld a, c

	; If the trainer is not from SCIENTIST trainer class,
	; continue to next trainer
	cp SWIMMERM
	jr nz, .not_pacobeer2

	; Load trainer id at a
	; Load music at de
	ld a, b
	ld de, MUSIC_LASTPOKEMON
	; If the trainer id matches, done
	cp PACOBEER2
	jr z, .done_custom_music
.not_pacobeer2
	;;;;;;;;
	; Load trainer class at a
	ld a, c

	; If the trainer is not from SCIENTIST trainer class,
	; continue to next trainer
	cp RANDOM
	jr nz, .not_bot

	; Load trainer id at a
	; Load music at de
	ld a, b
	ld de, MUSIC_CIPHERPEONBATTLE
	; If the trainer id matches, done
	cp BOT
	jr z, .done_custom_music
.not_bot
	;;;;;;;
	jr .done_custom_trainer

.done_custom_music
	; restore bc and done
	pop bc
	jp .done

.done_custom_trainer
	pop bc
	; NUEVO
	ld a, [wLinkMode]
	and a
	jp nz, .johtotrainer

	farcall RegionCheck
	ld a, e
	and a
	jp nz, .kantotrainer

.johtotrainer
	ld de, MUSIC_JOHTO_TRAINER_BATTLE
	jp .done

.kantotrainer
	ld de, MUSIC_KANTO_TRAINER_BATTLE

.done
	call PlayMusic

	pop bc
	pop de
	pop hl
	ret

ClearBattleRAM: ; 2ef18
	xor a
	ld [wBattlePlayerAction], a
	ld [wBattleResult], a

	ld hl, wPartyMenuCursor
	ld [hli], a
	ld [hli], a
	ld [hli], a
	ld [hl], a

	ld [wMenuScrollPosition], a
	ld [wCriticalHit], a
	ld [wBattleMonSpecies], a
	ld [wBattleParticipantsNotFainted], a
	ld [wCurBattleMon], a
	ld [wForcedSwitch], a
	ld [wTimeOfDayPal], a
	ld [wPlayerTurnsTaken], a
	ld [wEnemyTurnsTaken], a
	ld [wEvolvableFlags], a

	ld hl, wPlayerHPPal
	ld [hli], a
	ld [hl], a

	ld hl, wBattleMonDVs
	ld [hli], a
	ld [hl], a

	ld hl, wEnemyMonDVs
	ld [hli], a
	ld [hl], a

; Clear the entire BattleMons area
	ld hl, wBattle
	ld bc, wBattleEnd - wBattle
	xor a
	call ByteFill

	callfar ResetEnemyStatLevels

	call ClearWindowData

	ld hl, hBGMapAddress
	xor a ; LOW(vBGMap0)
	ld [hli], a
	ld [hl], HIGH(vBGMap0)
	ret
