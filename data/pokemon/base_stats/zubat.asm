	db ZUBAT ; 041

	db  40,  45,  35,  55,  30,  40
	;   hp  atk  def  spd  sat  sdf

	db POISON, FLYING ; type
	db 255 ; catch rate
	db 54 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
; Delete to save space
	db 5 ; step cycles to hatch
; Delete to save space
	INCBIN "gfx/pokemon/zubat/front.dimensions"
; Delete to save space
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_FLYING, EGG_FLYING ; egg groups

	; tm/hm learnset
	tmhm HEADBUTT, CURSE, TOXIC, HIDDEN_POWER, SUNNY_DAY, SNORE, PROTECT, GIGA_DRAIN, ENDURE, FRUSTRATION, RETURN, SHADOW_BALL, DOUBLE_TEAM, SWAGGER, SLEEP_TALK, SLUDGE_BOMB, SWIFT, DETECT, REST, ATTRACT, THIEF, STEEL_WING, FLY, MOONLIGHT
	; end
