	db DUGTRIO ; 051

	db  35,  100,  50, 120,  50,  70
	;   hp  atk  def  spd  sat  sdf

	db GROUND, GROUND ; type
	db 50 ; catch rate
	db 153 ; base exp
	db SOFT_SAND, SOFT_SAND ; items
	db GENDER_F50 ; gender ratio
; Delete to save space
	db 6 ; step cycles to hatch
; Delete to save space
	INCBIN "gfx/pokemon/dugtrio/front.dimensions"
; Delete to save space
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_FIELD, EGG_FIELD ; egg groups

	; tm/hm learnset
	tmhm HEADBUTT, CURSE, TOXIC, ROCK_SMASH, HIDDEN_POWER, SUNNY_DAY, SNORE, HYPER_BEAM, PROTECT, ENDURE, FRUSTRATION, EARTHQUAKE, RETURN, DIG, MUD_SLAP, DOUBLE_TEAM, SWAGGER, SLEEP_TALK, SLUDGE_BOMB, REST, ATTRACT, THIEF, CUT
	; end
