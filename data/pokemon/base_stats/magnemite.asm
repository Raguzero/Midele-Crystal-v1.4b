	db MAGNEMITE ; 081

	db  25,  35,  70,  45,  95,  55
	;   hp  atk  def  spd  sat  sdf

	db ELECTRIC, STEEL ; type
	db 190 ; catch rate
	db 89 ; base exp
	db MAGNET, METAL_COAT ; items
	db GENDERLESS ; gender ratio
; Delete to save space
	db 6 ; step cycles to hatch
; Delete to save space
	INCBIN "gfx/pokemon/magnemite/front.dimensions"
; Delete to save space
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_MINERAL, EGG_MINERAL ; egg groups

	; tm/hm learnset
	tmhm HEADBUTT, CURSE, ROLLOUT, TOXIC, ZAP_CANNON, HIDDEN_POWER, SNORE, PROTECT, RAIN_DANCE, ENDURE, FRUSTRATION, THUNDER, RETURN, DOUBLE_TEAM, SWAGGER, SLEEP_TALK, SWIFT, REST, FLASH, THUNDERBOLT
	; end
