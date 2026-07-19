	db PIDGEOTTO ; 017

	db  63,  60,  55,  71,  50,  50
	;   hp  atk  def  spd  sat  sdf

	db NORMAL, FLYING ; type
	db 120 ; catch rate
	db 113 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
; Delete to save space
	db 5 ; step cycles to hatch
; Delete to save space
	INCBIN "gfx/pokemon/pidgeotto/front.dimensions"
; Delete to save space
	db GROWTH_MEDIUM_SLOW ; growth rate
	dn EGG_FLYING, EGG_FLYING ; egg groups

	; tm/hm learnset
	tmhm HEADBUTT, CURSE, TOXIC, HIDDEN_POWER, SUNNY_DAY, SNORE, PROTECT, ENDURE, FRUSTRATION, RETURN, MUD_SLAP, DOUBLE_TEAM, SWAGGER, SLEEP_TALK, SWIFT, DETECT, REST, ATTRACT, THIEF, STEEL_WING, FLY, MORNING_SUN
	; end
