; Pokémon swarms in grass

SwarmGrassWildMons: ; 0x2b8d0

; Dunsparce swarm
	map_id DARK_CAVE_VIOLET_ENTRANCE
	db 4 percent, 4 percent, 4 percent ; encounter rates: morn/day/nite
	; morn
	db 3, GEODUDE
	db 3, DUNSPARCE
	db 2, ZUBAT
	db 2, GEODUDE
	db 2, TEDDIURSA
	db 4, DUNSPARCE
	db 4, DUNSPARCE
	; day
	db 3, GEODUDE
	db 3, DUNSPARCE
	db 2, ZUBAT
	db 2, GEODUDE
	db 2, DUNSPARCE
	db 4, DUNSPARCE
	db 4, DUNSPARCE
	; nite
	db 3, GEODUDE
	db 3, DUNSPARCE
	db 2, ZUBAT
	db 2, GEODUDE
	db 2, DUNSPARCE
	db 4, DUNSPARCE
	db 4, DUNSPARCE

; Yanma swarm
	map_id ROUTE_35
	db 10 percent, 10 percent, 10 percent ; encounter rates: morn/day/nite
	; morn
	db 16, SNUBBULL
	db 16, PIDGEY
	db 18, YANMA
	db 20, YANMA
	db 16, GROWLITHE
	db 16, JIGGLYPUFF
	db 18, DITTO
	; day
	db 16, SNUBBULL
	db 16, PIDGEY
	db 18, YANMA
	db 20, YANMA
	db 16, GROWLITHE
	db 16, JIGGLYPUFF
	db 18, DITTO
	; nite
	db 16, DROWZEE
	db 17, HOOTHOOT
	db 20, YANMA
	db 18, PSYDUCK
	db 16, HOUNDOUR
	db 16, JIGGLYPUFF
	db 18, DITTO

	db -1 ; end
