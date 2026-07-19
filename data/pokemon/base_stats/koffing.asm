	db KOFFING ; 109

	db  40,  65,  95,  35,  60,  45
	;   hp  atk  def  spd  sat  sdf

	db POISON, POISON ; type
	db 190 ; catch rate
	db 114 ; base exp
	db SMOKE_BALL, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
; Delete to save space
	db 6 ; step cycles to hatch
; Delete to save space
	INCBIN "gfx/pokemon/koffing/front.dimensions"
; Delete to save space
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_AMORPHOUS, EGG_AMORPHOUS ; egg groups

	; tm/hm learnset
	tmhm HEADBUTT, CURSE, ROLLOUT, TOXIC, ZAP_CANNON, HIDDEN_POWER, SUNNY_DAY, SNORE, PROTECT, ENDURE, FRUSTRATION, THUNDER, RETURN, SHADOW_BALL, DOUBLE_TEAM, SWAGGER, SLEEP_TALK, SLUDGE_BOMB, FIRE_BLAST, REST, ATTRACT, THIEF, FLAMETHROWER, THUNDERBOLT
	; end
