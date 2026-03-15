time_group EQUS "0," ; use the nth TimeFishGroups entry

fishgroup: MACRO
; chance, old rod, good rod, super rod
	dbwww \1, \2, \3, \4
ENDM

FishGroups: ; 92488
; entries correspond to FISHGROUP_* constants
	fishgroup 50 percent + 1, .Shore_Old,            .Shore_Good,            .Shore_Super
	fishgroup 50 percent + 1, .Ocean_Old,            .Ocean_Good,            .Ocean_Super
	fishgroup 50 percent + 1, .Lake_Old,             .Lake_Good,             .Lake_Super
	fishgroup 50 percent + 1, .Pond_Old,             .Pond_Good,             .Pond_Super
	fishgroup 50 percent + 1, .Dratini_Old,          .Dratini_Good,          .Dratini_Super
	fishgroup 50 percent + 1, .Qwilfish_Swarm_Old,   .Qwilfish_Swarm_Good,   .Qwilfish_Swarm_Super
	fishgroup 50 percent + 1, .Remoraid_Swarm_Old,   .Remoraid_Swarm_Good,   .Remoraid_Swarm_Super
	fishgroup 50 percent + 1, .Gyarados_Old,         .Gyarados_Good,         .Gyarados_Super
	fishgroup 50 percent + 1, .Dratini_2_Old,        .Dratini_2_Good,        .Dratini_2_Super
	fishgroup 50 percent + 1, .WhirlIslands_Old,     .WhirlIslands_Good,     .WhirlIslands_Super
	fishgroup 50 percent + 1, .Qwilfish_Old,         .Qwilfish_Good,         .Qwilfish_Super
	fishgroup 50 percent + 1, .Remoraid_Old,         .Remoraid_Good,         .Remoraid_Super
	fishgroup 50 percent + 1, .Qwilfish_NoSwarm_Old, .Qwilfish_NoSwarm_Good, .Qwilfish_NoSwarm_Super

.Shore_Old: ; 924e3
	db  70 percent + 1, MAGIKARP,   10
	db  85 percent + 1, MAGIKARP,   10
	db 100 percent,     KRABBY,     10
.Shore_Good: ; 924ec
	db  35 percent,     MAGIKARP,   20
	db  70 percent,     KRABBY,     20
	db  90 percent + 1, KRABBY,     20
	db 100 percent,     time_group 0
.Shore_Super: ; 924f8
	db  40 percent,     KRABBY,     60
	db  70 percent,     time_group 1
	db  90 percent + 1, KRABBY,     60
	db 100 percent,     KINGLER,    60

.Ocean_Old: ; 92504
	db  70 percent + 1, MAGIKARP,   10
	db  85 percent + 1, MAGIKARP,   10
	db 100 percent,     TENTACOOL,  10
.Ocean_Good: ; 9250d
	db  35 percent,     MAGIKARP,   20
	db  70 percent,     TENTACOOL,  20
	db  90 percent + 1, CHINCHOU,   20
	db 100 percent,     time_group 2
.Ocean_Super: ; 92519
	db  40 percent,     CHINCHOU,   60
	db  70 percent,     time_group 3
	db  90 percent + 1, TENTACRUEL, 60
	db 100 percent,     LANTURN,    60

.Lake_Old: ; 92525
	db  70 percent + 1, MAGIKARP,   10
	db  85 percent + 1, MAGIKARP,   10
	db 100 percent,     GOLDEEN,    10
.Lake_Good: ; 9252e
	db  35 percent,     MAGIKARP,   20
	db  70 percent,     GOLDEEN,    20
	db  90 percent + 1, GOLDEEN,    20
	db 100 percent,     time_group 4
.Lake_Super: ; 9253a
	db  40 percent,     GOLDEEN,    60
	db  70 percent,     time_group 5
	db  90 percent + 1, MAGIKARP,   60
	db 100 percent,     SEAKING,    60

.Pond_Old: ; 92546
	db  70 percent + 1, MAGIKARP,   10
	db  85 percent + 1, MAGIKARP,   10
	db 100 percent,     POLIWAG,    10
.Pond_Good: ; 9254f
	db  35 percent,     MAGIKARP,   20
	db  70 percent,     POLIWAG,    20
	db  90 percent + 1, POLIWAG,    20
	db 100 percent,     time_group 6
.Pond_Super: ; 9255b
	db  40 percent,     POLIWAG,    60
	db  70 percent,     time_group 7
	db  90 percent + 1, REMORAID,   60
	db 100 percent,     POLIWAG,    60

.Dratini_Old: ; 92567
	db  70 percent + 1, MAGIKARP,   10
	db  85 percent + 1, MAGIKARP,   10
	db 100 percent,     MAGIKARP,   10
.Dratini_Good: ; 92570
	db  35 percent,     MAGIKARP,   20
	db  70 percent,     MAGIKARP,   20
	db  90 percent + 1, MAGIKARP,   20
	db 100 percent,     time_group 8
.Dratini_Super: ; 9257c
	db  40 percent,     REMORAID,   60
	db  70 percent,     time_group 9
	db  90 percent + 1, MAGIKARP,   60
	db 100 percent,     DRAGONAIR,  60

.Qwilfish_Swarm_Old: ; 92588
	db  70 percent + 1, MAGIKARP,   5
	db  85 percent + 1, MAGIKARP,   5
	db 100 percent,     QWILFISH,   5
.Qwilfish_Swarm_Good: ; 92591
	db  35 percent,     MAGIKARP,   20
	db  70 percent,     QWILFISH,   20
	db  90 percent + 1, QWILFISH,   20
	db 100 percent,     time_group 10
.Qwilfish_Swarm_Super: ; 9259d
	db  40 percent,     QWILFISH,   60
	db  70 percent,     time_group 11
	db  90 percent + 1, QWILFISH,   60
	db 100 percent,     QWILFISH,   60

.Remoraid_Swarm_Old: ; 925a9
	db  70 percent + 1, MAGIKARP,   10
	db  85 percent + 1, REMORAID,   10
	db 100 percent,     REMORAID,   10
.Remoraid_Swarm_Good: ; 925b2
	db  35 percent,     MAGIKARP,   20
	db  70 percent,     REMORAID,   20
	db  90 percent + 1, REMORAID,   20
	db 100 percent,     time_group 12
.Remoraid_Swarm_Super: ; 925be
	db  40 percent,     REMORAID,   60
	db  70 percent,     time_group 13
	db  90 percent + 1, REMORAID,   60
	db 100 percent,     REMORAID,   60

.Gyarados_Old: ; 925ca
	db  70 percent + 1, MAGIKARP,   10
	db  85 percent + 1, MAGIKARP,   10
	db 100 percent,     MAGIKARP,   10
.Gyarados_Good: ; 925d3
	db  35 percent,     MAGIKARP,   20
	db  70 percent,     MAGIKARP,   20
	db  90 percent + 1, MAGIKARP,   20
	db 100 percent,     time_group 14
.Gyarados_Super: ; 925df
	db  40 percent,     MAGIKARP,   60
	db  70 percent,     time_group 15
	db  90 percent + 1, MAGIKARP,   60
	db 100 percent,     MAGIKARP,   60

.Dratini_2_Old: ; 925eb
	db  70 percent + 1, MAGIKARP,   10
	db  85 percent + 1, MAGIKARP,   10
	db 100 percent,     MAGIKARP,   10
.Dratini_2_Good: ; 925f4
	db  35 percent,     MAGIKARP,   10
	db  70 percent,     MAGIKARP,   10
	db  90 percent + 1, MAGIKARP,   10
	db 100 percent,     time_group 16
.Dratini_2_Super: ; 92600
	db  40 percent,     MAGIKARP,   60
	db  70 percent,     time_group 17
	db  90 percent + 1, REMORAID,   60
	db 100 percent,     DRAGONAIR,  60

.WhirlIslands_Old: ; 9260c
	db  70 percent + 1, MAGIKARP,   10
	db  85 percent + 1, MAGIKARP,   10
	db 100 percent,     KRABBY,     10
.WhirlIslands_Good: ; 92615
	db  35 percent,     MAGIKARP,   20
	db  70 percent,     KRABBY,     20
	db  90 percent + 1, KRABBY,     20
	db 100 percent,     time_group 18
.WhirlIslands_Super: ; 92621
	db  40 percent,     KRABBY,     60
	db  70 percent,     time_group 19
	db  90 percent + 1, KINGLER,    60
	db 100 percent,     SEADRA,     60

.Qwilfish_NoSwarm_Old:
.Qwilfish_Old: ; 9262d
	db  70 percent + 1, MAGIKARP,   10
	db  85 percent + 1, MAGIKARP,   10
	db 100 percent,     TENTACOOL,  10
.Qwilfish_NoSwarm_Good:
.Qwilfish_Good: ; 92636
	db  35 percent,     MAGIKARP,   20
	db  70 percent,     TENTACOOL,  20
	db  90 percent + 1, TENTACOOL,  20
	db 100 percent,     time_group 20
.Qwilfish_NoSwarm_Super:
.Qwilfish_Super: ; 92642
	db  40 percent,     TENTACOOL,  60
	db  70 percent,     time_group 21
	db  90 percent + 1, MAGIKARP,   60
	db 100 percent,     QWILFISH,   60

.Remoraid_Old: ; 9264e
	db  70 percent + 1, MAGIKARP,   10
	db  85 percent + 1, MAGIKARP,   10
	db 100 percent,     POLIWAG,    10
.Remoraid_Good: ; 92657
	db  35 percent,     MAGIKARP,   20
	db  70 percent,     POLIWAG,    20
	db  90 percent + 1, POLIWAG,    20
	db 100 percent,     time_group 6
.Remoraid_Super: ; 92663
	db  40 percent,     POLIWAG,    60
	db  70 percent,     time_group 7
	db  90 percent + 1, REMORAID,   60
	db 100 percent,     REMORAID,   60
; 9266f


TimeFishGroups: ; 9266f
	;  day              nite
	db CORSOLA,    20,  STARYU,     20 ; 0
	db CORSOLA,    60,  STARYU,     60 ; 1
	db SHELLDER,   20,  SHELLDER,   20 ; 2
	db SHELLDER,   60,  SHELLDER,   60 ; 3
	db GOLDEEN,    20,  GOLDEEN,    20 ; 4
	db GOLDEEN,    60,  GOLDEEN,    60 ; 5
	db POLIWAG,    20,  POLIWAG,    20 ; 6
	db POLIWAG,    60,  POLIWAG,    60 ; 7
	db DRATINI,    20,  DRATINI,    20 ; 8
	db DRATINI,    60,  DRATINI,    60 ; 9
	db QWILFISH,   20,  QWILFISH,   20 ; 10
	db QWILFISH,   60,  QWILFISH,   60 ; 11
	db REMORAID,   20,  REMORAID,   20 ; 12
	db REMORAID,   60,  REMORAID,   60 ; 13
	db GYARADOS,   20,  GYARADOS,   20 ; 14
	db GYARADOS,   60,  GYARADOS,   60 ; 15
	db DRATINI,    10,  DRATINI,    10 ; 16
	db DRATINI,    60,  DRATINI,    60 ; 17
	db HORSEA,     20,  HORSEA,     20 ; 18
	db HORSEA,     60,  HORSEA,     60 ; 19
	db TENTACOOL,  20,  TENTACOOL,  20 ; 20
	db TENTACOOL,  60,  TENTACOOL,  60 ; 21
; 926c7

FishGroups_Names::
	; QUE HAGO CON ESTO? DA ERROR AL COMPILAR table_width 2, FishGroups_Names
	dw Group1_Name
	dw Group2_Name
	dw Group3_Name
	dw Group4_Name
	dw Group5_Name
	dw Group6_Name
	dw Group7_Name
	dw Group8_Name
	dw Group9_Name
	dw Group10_Name
	dw Group11_Name
	dw Group12_Name
	dw Group13_Name
	; QUE HAGO CON ESTO? DA ERROR AL COMPILAR assert_table_length NUM_FISHGROUPS ; (13, NONE is not included in the count)

Group1_Name:
	db " SHORE@"
Group2_Name:
	db " OCEAN@"
Group3_Name:
	db " LAKE@"
Group4_Name:
	db " POND@"
Group5_Name:
	db " DRATINI@"
Group6_Name:
	db " SWARM 1@"
Group7_Name:
	db " SWARM 2@"
Group8_Name:
	db " GYARADOS@"
Group9_Name:
	db " ROUTE 45@"
	; db " DRATINI 2@"
Group10_Name:
	db " WHIRL@"
Group11_Name:
	db " QWILFISH@"
Group12_Name:
	db " REMORAID@"
Group13_Name:
	db " ROUTE 12@"
	; db " QWILFISH 2@"
GetFishGroupName:
; given fishing group num in 'a'
; return str ptr in 'de'
	dec a
	add a ; doubles the index since ptrs are 2 bytes
	ld hl, FishGroups_Names
	ld d, 0
	ld e, a
	add hl, de
	ld e, [hl]
	inc hl
	ld d, [hl]
	ret

GetMapsFishGroup::
	dec d ; map num
	dec e ; map group
	push de
	ld d, 0
	; 'e' is the map group
	ld hl, MapGroupPointers
	add hl, de ; since ptrs are 2 bytes, double the index
	add hl, de
	ld a, BANK(MapGroupPointers)
	call GetFarHalfword 
	pop de
	ld a, d ; map num becomes the index, do the same as map group
	ld bc, 9 ;  ld bc, MAP_LENGTH DA ERROR AL COMPILAR PERO EL NUMERO DE map struct members es 9 (see data/maps/maps.asm)
	; hl is pointing to map group ptr
	call AddNTimes ;  Add bc * a to hl.
	; fish group is the very last byte in the entry
	ld bc, 9 - 1 ; 	ld bc, MAP_LENGTH - 1 DA ERROR AL COMPILAR PERO EL NUMERO DE map struct members es 9 (see data/maps/maps.asm)
	add hl, bc
	ld a, BANK(MapGroupPointers)
	call GetFarByte
	; ld a, [hl] ; fishing group
	cp FISHGROUP_NONE
	jr z, .fishgroup_none
	call GetFishGroupName
	; ptr to fishgroup name is in de
	ret
.fishgroup_none
	xor a
	ld d, a
	ld e, a
	ret

; GetNextMapName_FishGroup:
; given: Fish group
; given: page number + num already printed
; calculate the map number of next map entry with that fishing group
; get map name based on map index
; return: map name ptr in 'de'
