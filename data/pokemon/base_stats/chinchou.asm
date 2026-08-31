	db CHINCHOU ; 170

	db  75,  38,  38,  67,  56,  56
	;   hp  atk  def  spd  sat  sdf

	db WATER, ELECTRIC ; type
	db 190 ; catch rate
	db 90 ; base exp
	db MYSTIC_WATER, MYSTIC_WATER ; items
	db GENDER_F50 ; gender ratio
; Delete to save space
	db 6 ; step cycles to hatch
; Delete to save space
	INCBIN "gfx/pokemon/chinchou/front.dimensions"
; Delete to save space
	db GROWTH_SLOW ; growth rate
	dn EGG_FISH, EGG_FISH ; egg groups

	; tm/hm learnset
	tmhm CURSE, TOXIC, ZAP_CANNON, HIDDEN_POWER, SNORE, ICY_WIND, PROTECT, RAIN_DANCE, ENDURE, FRUSTRATION, THUNDER, RETURN, DOUBLE_TEAM, SWAGGER, SLEEP_TALK, REST, ATTRACT, SURF, FLASH, WHIRLPOOL, WATERFALL, THUNDERBOLT, ICE_BEAM
	; end
