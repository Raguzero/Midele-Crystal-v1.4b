	db BUTTERFREE ; 012

	db  60,  45,  50,  70,  90,  80
	;   hp  atk  def  spd  sat  sdf

	db BUG, FLYING ; type
	db 45 ; catch rate
	db 160 ; base exp
	db SILVERPOWDER, SILVERPOWDER ; items
	db GENDER_F50 ; gender ratio
; Delete to save space
	db 5 ; step cycles to hatch
; Delete to save space
	INCBIN "gfx/pokemon/butterfree/front.dimensions"
; Delete to save space
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_BUG, EGG_BUG ; egg groups

	; tm/hm learnset
	tmhm HEADBUTT, CURSE, TOXIC, HIDDEN_POWER, SUNNY_DAY, SWEET_SCENT, SNORE, HYPER_BEAM, PROTECT, GIGA_DRAIN, ENDURE, FRUSTRATION, SOLARBEAM, RETURN, PSYCHIC_M, DOUBLE_TEAM, SWAGGER, SLEEP_TALK, SWIFT, REST, ATTRACT, THIEF, NIGHTMARE, FLASH, MORNING_SUN
	; end
