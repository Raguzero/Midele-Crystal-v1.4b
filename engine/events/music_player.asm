MUSIC_NAME_LENGTH EQU 16 ; max music name length
NUMBER_OF_MENU_SONGS   EQU 19

; Cómo añadir una música al reproductor:
;   1. Aumenta el valor de NUMBER_OF_MENU_SONGS en 1
;   2. Añade la constante MUSIC_* al final MusicMenuSongs
;   3. Añade el texto en MusicNames.

MusicPlayer:
  call ChooseMusic
  push af
  call CloseSubmenu
  pop af
  jr c, .no_play_song
  jr z, .cancel_song
  ld b, 0
  ld c, a
  call GetMusicFromMenuSongs
  push de
  xor a
  ld [wMusicFade], a
	ld de, MUSIC_NONE
	call PlayMusic
	call DelayFrame ; ¿Hace falta?
  pop de
  ld a, e
  ld [wCustomBattleMusic], a
  call PlayMusic
.no_play_song
  ret

.cancel_song
  ld a, 0
  ld [wCustomBattleMusic], a
  ret

ChooseMusic:
  call FadeToMenu
  farcall BlankScreen
  call UpdateSprites
  ld hl, .MenuHeaderData
  call CopyMenuHeader
  xor a
  ld [wMenuCursorBuffer], a
  ld [wMenuScrollPosition], a
  call ScrollingMenu
  call SpeechTextBox ; ¿Hace falta?
  ld a, [wMenuJoypad]
  cp B_BUTTON
  jr z, .carry
  ld a, [wMenuSelection]
  and a
  ret
.carry
  scf
  ret

.MenuHeaderData:
  db MENU_BACKUP_TILES ; flags
  db 01, 01 ; start coords
  db 11, 19 ; end coords
  dw .menudata2
  db 1 ; default option

.menudata2:
  db SCROLLINGMENU_DISPLAY_ARROWS | SCROLLINGMENU_ENABLE_FUNCTION3 ; pointers
  db 5, 8 ; rows, columns
  db 1 ; horizontal spacing
  dbw BANK(MusicMenu), MusicMenu
  dba .PlaceSongs
  dba .MenuRoutine2
  dba .MenuRoutine3

.PlaceSongs
  push de
  ld a, [wMenuSelection]
  cp 0
  jr z, .place_cancel
  ld c, a
  call CopyMenuMusicName
  ld de, wStringBuffer1
  pop hl
  call PlaceString
  ret
.place_cancel
  ld de, CancelText
  pop hl
  call PlaceString
  ret

.MenuRoutine2
  ld de, WhichSongToText
  hlcoord 3, 14
  call PlaceString
  ld de, PlayText
  hlcoord 3, 15
  call PlaceString
.MenuRoutine3
  ret

; Copies music name of menu music c to wStringBuffer1
CopyMenuMusicName:
  push bc
  push de
  push hl
  ld b, 0
  call GetMusicFromMenuSongs
  call GetMusicName
  call CopyMusicName
  pop hl
  pop de
  pop bc
  ret

; Copies music name at hl to wStringBuffer1
CopyMusicName:
  push bc
  push de
  ld de, wStringBuffer1
  ld b, 0
  ld c, MUSIC_NAME_LENGTH
  call CopyBytes
  pop de
  pop bc
  ret


; Gets name of music constant de to hl
GetMusicName:
  push bc
  ld hl, MusicNames
  add hl, de
  add hl, de
  ld a, [hli]
  ld c, a
  ld b, [hl]
  ld h, b
  ld l, c
  pop bc
  ret

; Gets menu music bc at de from music menu songs
GetMusicFromMenuSongs:
  push hl
  ld hl, MusicMenuSongs
  ; menu index base 1
  dec c
  add hl, bc
  ld e, [hl]
  ld d, 0
  pop hl
  ret

MusicMenu:
  db NUMBER_OF_MENU_SONGS; Number of songs (plus cancel)

  ; Music menu songs indices
CONTADOR = 1
rept NUMBER_OF_MENU_SONGS
  db CONTADOR
CONTADOR = CONTADOR + 1
endr

  db 0 ; cancel

; Music menu songs
MusicMenuSongs:
  db MUSIC_FINALBATTLE
  db MUSIC_NGE_INTRO
  db MUSIC_ELITEFOURUNOVA
	db MUSIC_WALLYBATTLE
	db MUSIC_LOOKZINNIA
	db MUSIC_CHAMPIONBATTLEDPPT
	db MUSIC_CIPHERPEONBATTLE
	db MUSIC_RIVALBATTLE_XY
	db MUSIC_CHAMPIONBATTLE_B2W2
	db MUSIC_LASTPOKEMON
	db MUSIC_SANTALUNE
	db MUSIC_MAXIEARCHIEBATTLE
	db MUSIC_ALOLAELITEFOURBATTLE
	db MUSIC_HEARTMULHOLLAND
	db MUSIC_EVERGRANDECITY
	db MUSIC_XYLEGENDBATTLE
    db MUSIC_GAMECORNER_SINNOH
 	db MUSIC_ZINNIABATTLE
	db MUSIC_LOOKGLADION

; Music names corresponding to MUSIC_* constants
MusicNames:
rept NUM_ORIGINAL_MUSIC
  dw .None
endr
  dw .FinalBattle
  dw .Evangelion
  dw .Elite4UnovaBattle
  dw .WallyBattle
  dw .LookZinnia
  dw .CynthiaBattle
  dw .CipherPeonBattle
  dw .RivalXYBattle
  dw .ChampionBW2Battle
  dw .LastPokemon
  dw .Santalune
  dw .MaxieArchieBattle
  dw .Elite4AlolaBattle
  dw .HeartMulHolland
  dw .EverGrandeCity
  dw .XYLegendBattle
  dw .GameCornerSinnoh
  dw .ZINNIABATTLE
  dw .LOOKGLADION

.None:              db "NONE@"
.FinalBattle:       db "FINAL BATTLE@"
.Evangelion: 		db "EVANGELION@"
.Elite4UnovaBattle: db "ELITE4 UNOVA@"
.WallyBattle:       db "WALLY BATTLE@"
.LookZinnia:        db "LOOK ZINNIA@"
.CynthiaBattle:     db "CYNTHIA BATTLE@"
.CipherPeonBattle:  db "CYPHER PEON@"
.RivalXYBattle:     db "RIVAL XY BATTLE@"
.ChampionBW2Battle: db "CHAMPION BW2@"
.LastPokemon:       db "LAST POKEMON@"
.Santalune:         db "SANTALUNE@"
.MaxieArchieBattle: db "MAXIE&ARCHIE@"
.Elite4AlolaBattle: db "ELITE4 ALOLA@"
.HeartMulHolland:   db "HEARTMULHOLLAND@"
.EverGrandeCity:    db "EVERGRANDECITY@"
.XYLegendBattle:    db "XY LEGENDBATTLE@"
.GameCornerSinnoh:  db "SINNOH CASINO@"
.ZINNIABATTLE:      db "ZINNIA BATTLE@"
.LOOKGLADION:       db "LOOK GLADION@"

CancelText:         db "CANCEL@"
WhichSongToText:     db "Which song to@"
PlayText:           db "play?@"
