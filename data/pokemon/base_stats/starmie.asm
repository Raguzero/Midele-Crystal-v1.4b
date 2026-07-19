	db STARMIE ; 121

	db  60,  75,  85, 115, 100,  85
	;   hp  atk  def  spd  sat  sdf

	db WATER, PSYCHIC ; type
	db 60 ; catch rate
	db 207 ; base exp
	db STARDUST, STAR_PIECE ; items
	db GENDERLESS ; gender ratio
; Delete to save space
	db 6 ; step cycles to hatch
; Delete to save space
	INCBIN "gfx/pokemon/starmie/front.dimensions"
; Delete to save space
	db GROWTH_SLOW ; growth rate
	dn EGG_INVERTEBRATE, EGG_INVERTEBRATE ; egg groups

	; tm/hm learnset
	tmhm HEADBUTT, CURSE, TOXIC, ZAP_CANNON, PSYCH_UP, HIDDEN_POWER, SNORE, BLIZZARD, HYPER_BEAM, ICY_WIND, PROTECT, RAIN_DANCE, ENDURE, FRUSTRATION, THUNDER, RETURN, PSYCHIC_M, DOUBLE_TEAM, SWAGGER, SLEEP_TALK, SWIFT, DREAM_EATER, REST, ATTRACT, NIGHTMARE, SURF, FLASH, WHIRLPOOL, WATERFALL, THUNDERBOLT, ICE_BEAM
	; end
