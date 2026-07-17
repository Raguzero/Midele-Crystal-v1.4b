INCLUDE "constants.asm"


SECTION "Evolutions and Attacks", ROMX

INCLUDE "data/pokemon/evolution_moves.asm"

INCLUDE "data/pokemon/evos_attacks_pointers.asm"


EvosAttacks::
; Evos+attacks data structure:
; - Evolution methods:
;    * db EVOLVE_LEVEL, level, species
;    * db EVOLVE_ITEM, used item, species
;    * db EVOLVE_TRADE, held item (or -1 for none), species
;    * db EVOLVE_HAPPINESS, TR_* constant (ANYTIME, MORNDAY, NITE), species
;    * db EVOLVE_STAT, level, ATK_*_DEF constant (LT, GT, EQ), species
; - db 0 ; no more evolutions
; - Learnset (in increasing level order):
;    * db level, move
; - db 0 ; no more level-up moves


BulbasaurEvosAttacks:
	db EVOLVE_LEVEL, 16, IVYSAUR
	db 0 ; no more evolutions
	db 1, TACKLE
	db 4, GROWL
	db 7, LEECH_SEED
	db 10, VINE_WHIP
	db 15, POISONPOWDER
	db 15, SLEEP_POWDER
	db 20, RAZOR_LEAF
	db 25, SWEET_SCENT
	db 28, GROWTH
	db 36, SYNTHESIS
	db 40, SOLARBEAM
	db 0 ; no more level-up moves

IvysaurEvosAttacks:
	db EVOLVE_LEVEL, 32, VENUSAUR
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, GROWL
	db 1, LEECH_SEED
	db 10, VINE_WHIP
	db 15, POISONPOWDER
	db 15, SLEEP_POWDER
	db 22, RAZOR_LEAF
	db 29, SWEET_SCENT
	db 33, GROWTH
	db 39, SYNTHESIS
	db 45, SOLARBEAM
	db 0 ; no more level-up moves

VenusaurEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, GROWL
	db 1, LEECH_SEED
	db 1, VINE_WHIP
	db 15, POISONPOWDER
	db 15, SLEEP_POWDER
	db 22, RAZOR_LEAF
	db 29, SWEET_SCENT
	db 41, GROWTH
	db 44, SWORDS_DANCE
	db 49, SYNTHESIS
	db 53, SOLARBEAM
	db 57, OUTRAGE
	db 0 ; no more level-up moves

CharmanderEvosAttacks:
	db EVOLVE_LEVEL, 16, CHARMELEON
	db 0 ; no more evolutions
	db 1, SCRATCH
	db 1, GROWL
	db 7, EMBER
	db 13, SMOKESCREEN
	db 19, RAGE
	db 25, SCARY_FACE
	db 31, FLAMETHROWER
	db 37, SLASH
	db 40, DRAGON_RAGE
	db 45, FIRE_SPIN
	db 0 ; no more level-up moves

CharmeleonEvosAttacks:
	db EVOLVE_LEVEL, 36, CHARIZARD
	db 0 ; no more evolutions
	db 1, SCRATCH
	db 1, GROWL
	db 1, EMBER
	db 13, SMOKESCREEN
	db 20, RAGE
	db 27, SCARY_FACE
	db 34, FLAMETHROWER
	db 41, SLASH
	db 44, DRAGON_RAGE
	db 49, FIRE_SPIN
	db 0 ; no more level-up moves

CharizardEvosAttacks:
	db 0 ; no more evolutions
	db 1, SCRATCH
	db 1, GROWL
	db 1, EMBER
	db 1, SMOKESCREEN
	db 20, RAGE
	db 27, SCARY_FACE
	db 34, FLAMETHROWER
	db 36, WING_ATTACK
	db 44, SLASH
	db 49, DRAGON_RAGE
	db 55, FIRE_SPIN
	db 59, OUTRAGE
	db 0 ; no more level-up moves

SquirtleEvosAttacks:
	db EVOLVE_LEVEL, 16, WARTORTLE
	db 0 ; no more evolutions
	db 1, TACKLE
	db 4, TAIL_WHIP
	db 7, BUBBLE
	db 10, WITHDRAW
	db 13, WATER_GUN
	db 18, BITE
	db 23, RAPID_SPIN
	db 28, PROTECT
	db 33, RAIN_DANCE
	db 37, SKULL_BASH
	db 43, HYDRO_PUMP
	db 0 ; no more level-up moves

WartortleEvosAttacks:
	db EVOLVE_LEVEL, 36, BLASTOISE
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, TAIL_WHIP
	db 1, BUBBLE
	db 10, WITHDRAW
	db 13, WATER_GUN
	db 19, BITE
	db 25, RAPID_SPIN
	db 31, PROTECT
	db 37, RAIN_DANCE
	db 40, SKULL_BASH
	db 46, HYDRO_PUMP
	db 0 ; no more level-up moves

BlastoiseEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, TAIL_WHIP
	db 1, BUBBLE
	db 1, WITHDRAW
	db 13, WATER_GUN
	db 19, BITE
	db 25, RAPID_SPIN
	db 31, PROTECT
	db 42, RAIN_DANCE
	db 46, CRUNCH
	db 51, SKULL_BASH
	db 56, HYDRO_PUMP
	db 0 ; no more level-up moves

CaterpieEvosAttacks:
	db EVOLVE_LEVEL, 7, METAPOD
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, STRING_SHOT
	db 5, SNORE
	db 0 ; no more level-up moves

MetapodEvosAttacks:
	db EVOLVE_LEVEL, 10, BUTTERFREE
	db 0 ; no more evolutions
	db 1, HARDEN
	db 0 ; no more level-up moves

ButterfreeEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, WHIRLWIND
	db 1, BATON_PASS
	db 10, GUST
	db 11, TWISTER
	db 12, CONFUSION
	db 14, POISONPOWDER
	db 16, SLEEP_POWDER
	db 18, SUPERSONIC
	db 20, STUN_SPORE
	db 22, PSYBEAM
	db 25, SAFEGUARD
	db 27, MORNING_SUN
	db 30, GIGA_DRAIN
	db 34, PSYCHIC_M
	db 37, REFLECT
	db 40, SUBSTITUTE
	db 0 ; no more level-up moves

WeedleEvosAttacks:
	db EVOLVE_LEVEL, 7, KAKUNA
	db 0 ; no more evolutions
	db 1, POISON_STING
	db 1, STRING_SHOT
	db 0 ; no more level-up moves

KakunaEvosAttacks:
	db EVOLVE_LEVEL, 10, BEEDRILL
	db 0 ; no more evolutions
	db 1, HARDEN
	db 0 ; no more level-up moves

BeedrillEvosAttacks:
	db 0 ; no more evolutions
	db 1, POISON_STING
	db 10, PECK
	db 13, FOCUS_ENERGY
	db 16, TWINEEDLE
	db 19, RAGE
	db 22, AGILITY
	db 25, PIN_MISSILE
	db 28, SWORDS_DANCE
	db 31, SLUDGE_BOMB
	db 34, SUBSTITUTE
	db 37, BATON_PASS
	db 40, DOUBLE_EDGE
	db 43, MEGAHORN ; New Exclusive Midele Move
	db 0 ; no more level-up moves

PidgeyEvosAttacks:
	db EVOLVE_LEVEL, 18, PIDGEOTTO
	db 0 ; no more evolutions
	db 1, TACKLE
	db 5, SAND_ATTACK
	db 8, GUST
	db 11, QUICK_ATTACK
	db 14, WHIRLWIND
	db 17, TWISTER
	db 19, WING_ATTACK
	db 23, AGILITY
	db 27, MIRROR_MOVE
	db 33, DOUBLE_EDGE
	db 0 ; no more level-up moves

PidgeottoEvosAttacks:
	db EVOLVE_LEVEL, 36, PIDGEOT
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, SAND_ATTACK
	db 8, GUST
	db 11, QUICK_ATTACK
	db 14, WHIRLWIND
	db 17, TWISTER
	db 18, STEEL_WING
	db 22, WING_ATTACK
	db 27, AGILITY
	db 33, MIRROR_MOVE
	db 38, DOUBLE_EDGE
	db 0 ; no more level-up moves

PidgeotEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, SAND_ATTACK
	db 1, CURSE
	db 8, GUST
	db 11, QUICK_ATTACK
	db 14, WHIRLWIND
	db 17, TWISTER
	db 18, STEEL_WING
	db 22, WING_ATTACK
	db 27, AGILITY
	db 33, MIRROR_MOVE
	db 41, DOUBLE_EDGE
	db 46, EXTREMESPEED ; New Exclusive Midele Move
	db 54, AEROBLAST ; New Exclusive Midele Move
	db 0 ; no more level-up moves

RattataEvosAttacks:
	db EVOLVE_LEVEL, 20, RATICATE
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, TAIL_WHIP
	db 4, WATER_GUN
	db 7, QUICK_ATTACK
	db 9, FOCUS_ENERGY
	db 11, FLAME_WHEEL
	db 13, HYPER_FANG
	db 16, PURSUIT
	db 21, CRUNCH
	db 24, SUPER_FANG
	db 0 ; no more level-up moves

RaticateEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, TAIL_WHIP
	db 1, QUICK_ATTACK
	db 4, WATER_GUN
	db 9, FOCUS_ENERGY
	db 11, FLAME_WHEEL
	db 13, HYPER_FANG
	db 16, PURSUIT
	db 20, SCARY_FACE
	db 23, CRUNCH
	db 25, SWORDS_DANCE
	db 28, JUMP_KICK ; New Exclusive Midele Move (Raticate of the Anime)
	db 30, THUNDER_WAVE
	db 33, SUPER_FANG
	db 36, REVERSAL
	db 40, DOUBLE_EDGE
	db 0 ; no more level-up moves

SpearowEvosAttacks:
	db EVOLVE_LEVEL, 20, FEAROW
	db 0 ; no more evolutions
	db 1, GROWL
	db 1, PECK
	db 5, LEER
	db 7, PURSUIT
	db 9, QUICK_ATTACK
	db 12, FURY_ATTACK
	db 14, MIRROR_MOVE
	db 18, FOCUS_ENERGY
	db 23, SWIFT
	db 27, DRILL_PECK
	db 30, AGILITY
	db 32, TRI_ATTACK
	db 35, DOUBLE_EDGE
	db 43, SKY_ATTACK
	db 0 ; no more level-up moves

FearowEvosAttacks:
	db 0 ; no more evolutions
	db 1, PECK
	db 1, LEER
	db 1, PURSUIT
	db 1, QUICK_ATTACK
	db 12, FURY_ATTACK
	db 14, MIRROR_MOVE
	db 18, FOCUS_ENERGY
	db 21, PAY_DAY
	db 24, STEEL_WING
	db 27, SWIFT
	db 30, DRILL_PECK
	db 33, AGILITY
	db 37, TRI_ATTACK
	db 40, SWORDS_DANCE ; New Exclusive Midele Move
	db 44, DOUBLE_EDGE
	db 48, SKY_ATTACK
	db 0 ; no more level-up moves

EkansEvosAttacks:
	db EVOLVE_LEVEL, 22, ARBOK
	db 0 ; no more evolutions
	db 1, LEER
	db 1, WRAP
	db 5, POISON_STING
	db 8, BITE
	db 11, ACID
	db 13, MEGA_DRAIN
	db 16, GLARE
	db 19, SCREECH
	db 23, LEECH_LIFE
	db 27, SLUDGE_BOMB
	db 34, HAZE
	db 0 ; no more level-up moves

ArbokEvosAttacks:
	db 0 ; no more evolutions
	db 1, SCREECH
	db 1, WRAP
	db 1, POISON_STING
	db 1, BITE
	db 11, ACID
	db 13, MEGA_DRAIN
	db 16, GLARE
	db 23, TOXIC
	db 25, LEECH_LIFE
	db 28, PAIN_SPLIT
	db 31, FISSURE
	db 33, GIGA_DRAIN
	db 35, CURSE
	db 37, BODY_SLAM
	db 39, SLUDGE_BOMB
	db 41, DISABLE
	db 44, EARTHQUAKE
	db 47, HAZE
	db 50, SUBSTITUTE
	db 0 ; no more level-up moves

PikachuEvosAttacks:
	db EVOLVE_ITEM, THUNDERSTONE, RAICHU
	db 0 ; no more evolutions
	db 1, THUNDERSHOCK
	db 1, GROWL
	db 6, TAIL_WHIP
	db 8, THUNDER_WAVE
	db 10, QUICK_ATTACK
	db 14, DOUBLE_KICK
	db 17, SPARK
	db 20, DOUBLE_TEAM
	db 23, SLAM
	db 26, THUNDERBOLT
	db 33, AGILITY
	db 36, SUBSTITUTE
	db 41, EXTREMESPEED
	db 43, ENCORE
	db 47, REVERSAL
	db 51, PETAL_DANCE
	db 55, LIGHT_SCREEN
	db 58, DAZZLING_GLEAM
	db 60, NASTY_PLOT
	db 0 ; no more level-up moves

RaichuEvosAttacks:
	db 0 ; no more evolutions
	db 1, THUNDERSHOCK
	db 1, TAIL_WHIP
	db 1, EXTREMESPEED
	db 1, THUNDERBOLT
	db 65, NASTY_PLOT
	db 0 ; no more level-up moves

SandshrewEvosAttacks:
	db EVOLVE_LEVEL, 22, SANDSLASH
	db 0 ; no more evolutions
	db 1, SCRATCH
	db 1, DEFENSE_CURL
	db 7, SAND_ATTACK
	db 9, POISON_STING
	db 12, RAPID_SPIN
	db 15, MAGNITUDE
	db 18, FURY_SWIPES
	db 23, SWIFT
	db 26, SLASH
	db 31, LEECH_LIFE
	db 35, SANDSTORM
	db 0 ; no more level-up moves

SandslashEvosAttacks:
	db 0 ; no more evolutions
	db 1, SCRATCH
	db 1, DEFENSE_CURL
	db 1, SAND_ATTACK
	db 1, POISON_STING
	db 12, RAPID_SPIN
	db 15, MAGNITUDE
	db 18, FURY_SWIPES
	db 23, PIN_MISSILE
	db 26, SWIFT
	db 29, SPIKES
	db 33, SLASH
	db 36, ROCK_SLIDE
	db 39, SWORDS_DANCE
	db 42, LEECH_LIFE
	db 46, BODY_SLAM
	db 49, FISSURE
	db 52, SANDSTORM
	db 56, EARTHQUAKE
	db 0 ; no more level-up moves

NidoranFEvosAttacks:
	db EVOLVE_LEVEL, 16, NIDORINA
	db 0 ; no more evolutions
	db 1, GROWL
	db 1, TACKLE
	db 4, POISON_STING
	db 8, SCRATCH
	db 12, DOUBLE_KICK
	db 15, MOONLIGHT
	db 17, SWEET_KISS
	db 23, TAIL_WHIP
	db 30, BITE
	db 38, FURY_SWIPES
	db 0 ; no more level-up moves

NidorinaEvosAttacks:
	db EVOLVE_ITEM, MOON_STONE, NIDOQUEEN
	db 0 ; no more evolutions
	db 1, GROWL
	db 1, TACKLE
	db 1, POISON_STING
	db 8, SCRATCH
	db 12, DOUBLE_KICK
	db 15, MOONLIGHT
	db 19, SWEET_KISS
	db 27, TAIL_WHIP
	db 36, BITE
	db 41, HORN_DRILL
	db 46, FURY_SWIPES
	db 0 ; no more level-up moves

NidoqueenEvosAttacks:
	db 0 ; no more evolutions
	db 1, FISSURE
	db 1, SCRATCH
	db 1, DOUBLE_KICK
	db 1, TAIL_WHIP
	db 15, MOONLIGHT
	db 23, BODY_SLAM
	db 34, ROCK_SLIDE
	db 39, CRUNCH
	db 44, HORN_DRILL
	db 47, SUPER_FANG
	db 0 ; no more level-up moves

NidoranMEvosAttacks:
	db EVOLVE_LEVEL, 16, NIDORINO
	db 0 ; no more evolutions
	db 1, LEER
	db 1, TACKLE
	db 1, POISON_STING
	db 6, PECK
	db 9, FURY_ATTACK
	db 12, DOUBLE_KICK
	db 15, MORNING_SUN
	db 17, SWEET_KISS
	db 23, FOCUS_ENERGY
	db 30, HORN_ATTACK
	db 38, HORN_DRILL
	db 0 ; no more level-up moves

NidorinoEvosAttacks:
	db EVOLVE_ITEM, MOON_STONE, NIDOKING
	db 0 ; no more evolutions
	db 1, LEER
	db 1, TACKLE
	db 1, POISON_STING
	db 6, PECK
	db 9, FURY_ATTACK
	db 12, DOUBLE_KICK
	db 15, MORNING_SUN
	db 19, SWEET_KISS
	db 27, FOCUS_ENERGY
	db 36, HORN_ATTACK
	db 46, HORN_DRILL
	db 0 ; no more level-up moves

NidokingEvosAttacks:
	db 0 ; no more evolutions
	db 1, FISSURE
	db 1, HORN_ATTACK
	db 1, DOUBLE_KICK
	db 1, POISON_STING
	db 15, MORNING_SUN
	db 23, THRASH
	db 34, ROCK_SLIDE
	db 46, MEGAHORN
	db 50, HORN_DRILL
	db 0 ; no more level-up moves

ClefairyEvosAttacks:
	db EVOLVE_ITEM, MOON_STONE, CLEFABLE
	db 0 ; no more evolutions
	db 1, FAIRY_WIND
	db 1, GROWL
	db 4, ENCORE
	db 8, SING
	db 13, DOUBLESLAP
	db 19, MINIMIZE
	db 26, DEFENSE_CURL
	db 31, MEGA_PUNCH
	db 34, METRONOME
	db 37, HEAL_BELL
	db 40, DAZZLING_GLEAM
	db 43, MOONLIGHT
	db 48, LIGHT_SCREEN
	db 0 ; no more level-up moves

ClefableEvosAttacks:
	db 0 ; no more evolutions
	db 1, SING
	db 1, DAZZLING_GLEAM
	db 1, METRONOME
	db 1, PETAL_DANCE
	db 0 ; no more level-up moves

VulpixEvosAttacks:
	db EVOLVE_ITEM, FIRE_STONE, NINETALES
	db 0 ; no more evolutions
	db 1, TAIL_WHIP
	db 1, EMBER
	db 7, QUICK_ATTACK
	db 13, ROAR
	db 15, HYPNOSIS
	db 17, FLAME_WHEEL
	db 19, PAIN_SPLIT
	db 21, CONFUSE_RAY
	db 24, FAINT_ATTACK
	db 27, SAFEGUARD
	db 31, FLAMETHROWER
	db 37, FIRE_SPIN
	db 50, NASTY_PLOT
	db 0 ; no more level-up moves

NinetalesEvosAttacks:
	db 0 ; no more evolutions
	db 1, EMBER
	db 1, QUICK_ATTACK
	db 1, CONFUSE_RAY
	db 1, SAFEGUARD
	db 23, PAIN_SPLIT
	db 27, NIGHT_SHADE
	db 31, CHARM
	db 34, SUNNY_DAY
	db 39, FIRE_SPIN
	db 42, REFLECT
	db 46, SUBSTITUTE
	db 55, NASTY_PLOT
	db 0 ; no more level-up moves

JigglypuffEvosAttacks:
	db EVOLVE_ITEM, MOON_STONE, WIGGLYTUFF
	db 0 ; no more evolutions
	db 1, DEFENSE_CURL
	db 1, POUND
	db 7, SING
	db 10, DOUBLESLAP
	db 13, DISABLE
	db 17, ROLLOUT
	db 20, BUBBLEBEAM
	db 23, SAFEGUARD
	db 26, SHADOW_BALL
	db 29, REST
	db 31, BODY_SLAM
	db 33, DAZZLING_GLEAM
	db 35, HEAL_BELL
	db 37, PAIN_SPLIT
	db 40, DOUBLE_EDGE
	db 45, SEISMIC_TOSS
	db 48, NASTY_PLOT
	db 54, SELFDESTRUCT
	db 0 ; no more level-up moves

WigglytuffEvosAttacks:
	db 0 ; no more evolutions
	db 1, SING
	db 1, ZAP_CANNON
	db 1, DISABLE
	db 17, ICY_WIND
	db 22, BUBBLEBEAM
	db 27, SHADOW_BALL
	db 31, REST
	db 33, BODY_SLAM
	db 36, DAZZLING_GLEAM
	db 38, HEAL_BELL
	db 41, PAIN_SPLIT
	db 44, DOUBLE_EDGE
	db 48, SEISMIC_TOSS
	db 51, PETAL_DANCE
	db 54, NASTY_PLOT
	db 57, SELFDESTRUCT
	db 62, SOFTBOILED ; New Exclusive Midele Move
	db 0 ; no more level-up moves

ZubatEvosAttacks:
	db EVOLVE_LEVEL, 22, GOLBAT
	db 0 ; no more evolutions
	db 1, ABSORB
	db 1, SUPERSONIC
	db 5, HYPNOSIS
	db 8, GUST
	db 10, BITE
	db 13, CONFUSE_RAY
	db 18, WING_ATTACK
	db 23, TOXIC
	db 26, LEECH_LIFE
	db 32, MEAN_LOOK
	db 38, HAZE
	db 44, NASTY_PLOT
	db 0 ; no more level-up moves

GolbatEvosAttacks:
	db EVOLVE_HAPPINESS, TR_ANYTIME, CROBAT
	db 0 ; no more evolutions
	db 1, SCREECH
	db 1, ABSORB
	db 1, SUPERSONIC
	db 5, HYPNOSIS
	db 8, GUST
	db 10, BITE
	db 13, CONFUSE_RAY
	db 18, WING_ATTACK
	db 24, TOXIC
	db 29, LEECH_LIFE
	db 35, MEAN_LOOK
	db 41, HAZE
	db 47, NASTY_PLOT
	db 0 ; no more level-up moves

OddishEvosAttacks:
	db EVOLVE_LEVEL, 21, GLOOM
	db 0 ; no more evolutions
	db 1, ABSORB
	db 4, SWEET_SCENT
	db 8, GROWTH
	db 10, ACID
	db 12, MEGA_DRAIN
	db 15, POISONPOWDER
	db 18, STUN_SPORE
	db 20, SLEEP_POWDER
	db 23, RAZOR_LEAF
	db 26, SLUDGE_BOMB
	db 29, DAZZLING_GLEAM
	db 32, MOONLIGHT
	db 35, REFLECT
	db 39, PETAL_DANCE
	db 0 ; no more level-up moves

GloomEvosAttacks:
	db EVOLVE_ITEM, LEAF_STONE, VILEPLUME
	db EVOLVE_ITEM, SUN_STONE, BELLOSSOM
	db 0 ; no more evolutions
	db 1, ABSORB
	db 1, SWEET_SCENT
	db 1, GROWTH
	db 10, ACID
	db 12, MEGA_DRAIN
	db 15, POISONPOWDER
	db 18, STUN_SPORE
	db 20, SLEEP_POWDER
	db 24, RAZOR_LEAF
	db 27, SLUDGE_BOMB
	db 30, DAZZLING_GLEAM
	db 35, MOONLIGHT
	db 38, REFLECT
	db 44, PETAL_DANCE
	db 0 ; no more level-up moves

VileplumeEvosAttacks:
	db 0 ; no more evolutions
	db 1, MEGA_DRAIN
	db 1, SWEET_SCENT
	db 1, STUN_SPORE
	db 25, SWORDS_DANCE
	db 32, SLUDGE_BOMB
	db 37, DAZZLING_GLEAM
	db 40, LEECH_SEED
	db 45, GIGA_DRAIN
	db 49, PETAL_DANCE
	db 0 ; no more level-up moves

ParasEvosAttacks:
	db EVOLVE_LEVEL, 24, PARASECT
	db 0 ; no more evolutions
	db 1, SCRATCH
	db 1, STUN_SPORE
	db 7, POISONPOWDER
	db 11, METAL_CLAW
	db 14, MEGA_DRAIN
	db 18, SLASH
	db 21, PSYBEAM
	db 23, GROWTH
	db 25, SLEEP_POWDER
	db 27, LEECH_LIFE
	db 36, SPORE
	db 0 ; no more level-up moves

ParasectEvosAttacks:
	db 0 ; no more evolutions
	db 1, SCRATCH
	db 1, STUN_SPORE
	db 1, POISONPOWDER
	db 1, SYNTHESIS
	db 11, METAL_CLAW
	db 14, MEGA_DRAIN
	db 18, SLASH
	db 21, PSYBEAM
	db 23, GROWTH
	db 24, DIG
	db 26, SLEEP_POWDER
	db 30, LEECH_SEED
	db 32, LEECH_LIFE
	db 34, AGILITY
	db 37, SLUDGE_BOMB
	db 40, SPORE
	db 43, GIGA_DRAIN
	db 48, BODY_SLAM
	db 0 ; no more level-up moves

VenonatEvosAttacks:
	db EVOLVE_LEVEL, 31, VENOMOTH
	db 0 ; no more evolutions
	db 1, TACKLE
	db 5, SUPERSONIC
	db 8, FORESIGHT
	db 12, CONFUSION
	db 15, CONFUSE_RAY
	db 17, POISONPOWDER
	db 17, STUN_SPORE
	db 19, GIGA_DRAIN
	db 19, LEECH_LIFE
	db 21, PSYBEAM
	db 24, NIGHT_SHADE
	db 26, AGILITY
	db 28, BATON_PASS
	db 32, DISABLE
	db 36, SLEEP_POWDER
	db 39, PSYCHIC_M
	db 0 ; no more level-up moves

VenomothEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, SUPERSONIC
	db 1, FORESIGHT
	db 1, CONFUSION
	db 15, CONFUSE_RAY
	db 17, POISONPOWDER
	db 17, STUN_SPORE
	db 19, GIGA_DRAIN
	db 19, LEECH_LIFE
	db 21, PSYBEAM
	db 24, NIGHT_SHADE
	db 26, AGILITY
	db 28, BATON_PASS
	db 31, GUST
	db 33, DISABLE
	db 36, SLUDGE_BOMB
	db 39, SLEEP_POWDER
	db 42, PSYCHIC_M
	db 0 ; no more level-up moves

DiglettEvosAttacks:
	db EVOLVE_LEVEL, 26, DUGTRIO
	db 0 ; no more evolutions
	db 1, SCRATCH
	db 5, GROWL
	db 9, MAGNITUDE
	db 17, DIG
	db 25, SAND_ATTACK
	db 33, SLASH
	db 38, EARTHQUAKE
	db 43, FISSURE
	db 0 ; no more level-up moves

DugtrioEvosAttacks:
	db 0 ; no more evolutions
	db 1, TRI_ATTACK
	db 1, SCRATCH
	db 1, GROWL
	db 1, MAGNITUDE
	db 17, DIG
	db 25, SAND_ATTACK
	db 37, SLASH
	db 44, REVERSAL
	db 49, EARTHQUAKE
	db 54, FISSURE
	db 59, SWORDS_DANCE
	db 0 ; no more level-up moves

MeowthEvosAttacks:
	db EVOLVE_LEVEL, 28, PERSIAN
	db 0 ; no more evolutions
	db 1, SCRATCH
	db 1, GROWL
	db 11, BITE
	db 14, METAL_CLAW
	db 17, PAY_DAY
	db 19, SPIKES
	db 20, FURY_SWIPES
	db 23, FAINT_ATTACK
	db 25, SCREECH
	db 27, SLASH
	db 30, RAIN_DANCE
	db 30, THUNDER
	db 35, THUNDER_WAVE
	db 40, BODY_SLAM
	db 44, NASTY_PLOT
	db 0 ; no more level-up moves

PersianEvosAttacks:
	db 0 ; no more evolutions
	db 1, SCRATCH
	db 1, CHARM
	db 1, BITE
	db 1, PAY_DAY
	db 14, METAL_CLAW
	db 19, SPIKES
	db 20, FURY_SWIPES
	db 23, FAINT_ATTACK
	db 25, SCREECH
	db 27, SLASH
	db 29, HYPNOSIS
	db 33, RAIN_DANCE
	db 33, THUNDER
	db 39, THUNDER_WAVE
	db 44, BODY_SLAM
	db 47, SPITE
	db 52, FLAIL
	db 55, PAIN_SPLIT
	db 58, NASTY_PLOT
	db 0 ; no more level-up moves

PsyduckEvosAttacks:
	db EVOLVE_LEVEL, 33, GOLDUCK
	db 0 ; no more evolutions
	db 1, SCREECH
	db 1, SCRATCH
	db 7, WATER_GUN
	db 13, CONFUSION
	db 16, FURY_SWIPES
	db 18, PSYBEAM
	db 20, DISABLE
	db 22, BUBBLEBEAM
	db 24, BODY_SLAM
	db 26, AMNESIA
	db 28, PSYCH_UP
	db 32, TRI_ATTACK
	db 37, HYPNOSIS
	db 44, HYDRO_PUMP
	db 49, NASTY_PLOT
	db 0 ; no more level-up moves

GolduckEvosAttacks:
	db 0 ; no more evolutions
	db 1, SCREECH
	db 1, SCRATCH
	db 1, CONFUSION
	db 7, WATER_GUN
	db 16, FURY_SWIPES
	db 18, PSYBEAM
	db 20, DISABLE
	db 22, BUBBLEBEAM
	db 24, BODY_SLAM
	db 26, AMNESIA
	db 28, PSYCH_UP
	db 32, TRI_ATTACK
	db 38, PSYCHIC_M
	db 42, HYPNOSIS
	db 45, HYDRO_PUMP
	db 48, CROSS_CHOP
	db 53, PETAL_DANCE
	db 57, NASTY_PLOT
	db 0 ; no more level-up moves

MankeyEvosAttacks:
	db EVOLVE_LEVEL, 28, PRIMEAPE
	db 0 ; no more evolutions
	db 1, SCRATCH
	db 1, LEER
	db 9, LOW_KICK
	db 15, KARATE_CHOP
	db 21, FURY_SWIPES
	db 27, FOCUS_ENERGY
	db 29, SEISMIC_TOSS
	db 35, CROSS_CHOP
	db 38, SCREECH
	db 43, THRASH
	db 0 ; no more level-up moves

PrimeapeEvosAttacks:
	db 0 ; no more evolutions
	db 1, FURY_SWIPES
	db 1, LOW_KICK
	db 1, KARATE_CHOP
	db 27, FOCUS_ENERGY
	db 28, RAGE
	db 28, SUBMISSION
	db 31, SEISMIC_TOSS
	db 34, BODY_SLAM
	db 37, ENCORE
	db 41, CROSS_CHOP
	db 44, SCREECH
	db 47, EARTHQUAKE
	db 50, THRASH
	db 0 ; no more level-up moves

GrowlitheEvosAttacks:
	db EVOLVE_ITEM, FIRE_STONE, ARCANINE
	db 0 ; no more evolutions
	db 1, LEER
	db 1, EMBER
	db 6, BITE
	db 10, DOUBLE_KICK
	db 14, FLAME_WHEEL
	db 18, SWIFT
	db 25, ROAR
	db 29, TAKE_DOWN
	db 33, AGILITY
	db 37, FLAMETHROWER
	db 0 ; no more level-up moves

ArcanineEvosAttacks:
	db 0 ; no more evolutions
	db 1, DRAGON_RAGE
	db 1, LEER
	db 1, EMBER
	db 1, FLAME_WHEEL
	db 10, DOUBLE_KICK
	db 18, SWIFT
	db 25, ROAR
	db 30, TAKE_DOWN
	db 33, BODY_SLAM
	db 38, SKULL_BASH
	db 46, EXTREMESPEED
	db 53, CRUNCH
	db 62, SOLARBEAM
	db 70, OUTRAGE
	db 0 ; no more level-up moves

PoliwagEvosAttacks:
	db EVOLVE_LEVEL, 25, POLIWHIRL
	db 0 ; no more evolutions
	db 1, BUBBLE
	db 4, HYPNOSIS
	db 7, WATER_GUN
	db 10, DOUBLESLAP
	db 13, RAIN_DANCE
	db 16, LOW_KICK
	db 19, ICY_WIND
	db 24, MIMIC
	db 30, BODY_SLAM
	db 37, BELLY_DRUM
	db 43, HYDRO_PUMP
	db 48, LOVELY_KISS
	db 0 ; no more level-up moves

PoliwhirlEvosAttacks:
	db EVOLVE_ITEM, WATER_STONE, POLIWRATH
	db EVOLVE_ITEM, KINGS_ROCK, POLITOED
	db 0 ; no more evolutions
	db 1, BUBBLE
	db 1, HYPNOSIS
	db 1, WATER_GUN
	db 10, DOUBLESLAP
	db 13, RAIN_DANCE
	db 16, LOW_KICK
	db 19, ICY_WIND
	db 24, MIMIC
	db 33, BODY_SLAM
	db 43, BELLY_DRUM
	db 47, HYDRO_PUMP
	db 52, LOVELY_KISS
	db 0 ; no more level-up moves

PoliwrathEvosAttacks:
	db 0 ; no more evolutions
	db 1, WATER_GUN
	db 1, HYPNOSIS
	db 1, DOUBLESLAP
	db 1, MIND_READER
	db 16, LOW_KICK
	db 24, FISSURE
	db 35, SUBMISSION
	db 44, DYNAMICPUNCH
	db 50, HYDRO_PUMP
	db 56, LOVELY_KISS
	db 0 ; no more level-up moves

AbraEvosAttacks:
	db EVOLVE_LEVEL, 20, KADABRA
	db 0 ; no more evolutions
	db 1, TELEPORT
	db 1, SNORE
	db 1, REST
	db 7, PSYWAVE
	db 9, SLEEP_TALK
	db 11, CONFUSION
	db 16, HIDDEN_POWER
	db 0 ; no more level-up moves

KadabraEvosAttacks:
	db EVOLVE_LEVEL, 40, ALAKAZAM
	db 0 ; no more evolutions
	db 1, KINESIS
	db 1, TELEPORT
	db 1, SNORE
	db 1, REST
	db 7, PSYWAVE
	db 9, SLEEP_TALK
	db 11, CONFUSION
	db 16, HIDDEN_POWER
	db 20, DISABLE
	db 26, PSYBEAM
	db 31, RECOVER
	db 37, FUTURE_SIGHT
	db 44, REFLECT
	db 49, PSYCHIC_M
	db 0 ; no more level-up moves

AlakazamEvosAttacks:
	db 0 ; no more evolutions
	db 1, KINESIS
	db 1, TELEPORT
	db 1, SNORE
	db 1, REST
	db 7, PSYWAVE
	db 9, SLEEP_TALK
	db 11, CONFUSION
	db 16, HIDDEN_POWER
	db 20, DISABLE
	db 26, PSYBEAM
	db 31, RECOVER
	db 37, FUTURE_SIGHT
	db 48, REFLECT
	db 56, PSYCHIC_M
	db 0 ; no more level-up moves

MachopEvosAttacks:
	db EVOLVE_LEVEL, 20, MACHOKE
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, LEER
	db 7, LOW_KICK
	db 9, COMET_PUNCH
	db 12, FOCUS_ENERGY
	db 15, KARATE_CHOP
	db 20, FORESIGHT
	db 26, VITAL_THROW
	db 30, ROCK_SLIDE
	db 33, SUBMISSION
	db 35, SCARY_FACE
	db 38, EARTHQUAKE
	db 42, CROSS_CHOP
	db 46, SEISMIC_TOSS
	db 0 ; no more level-up moves

MachokeEvosAttacks:
	db EVOLVE_LEVEL, 40, MACHAMP
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, LEER
	db 1, LOW_KICK
	db 1, FOCUS_ENERGY
	db 9, COMET_PUNCH
	db 15, KARATE_CHOP
	db 22, FORESIGHT
	db 29, VITAL_THROW
	db 36, ROCK_SLIDE
	db 38, SUBMISSION
	db 41, SCARY_FACE
	db 44, EARTHQUAKE
	db 47, CROSS_CHOP
	db 53, SEISMIC_TOSS
	db 0 ; no more level-up moves

MachampEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, LEER
	db 1, LOW_KICK
	db 1, FOCUS_ENERGY
	db 9, COMET_PUNCH
	db 15, KARATE_CHOP
	db 22, FORESIGHT
	db 29, VITAL_THROW
	db 36, ROCK_SLIDE
	db 38, SUBMISSION
	db 43, SCARY_FACE
	db 46, EARTHQUAKE
	db 49, CROSS_CHOP
	db 56, SEISMIC_TOSS
	db 0 ; no more level-up moves

BellsproutEvosAttacks:
	db EVOLVE_LEVEL, 21, WEEPINBELL
	db 0 ; no more evolutions
	db 1, RAGE
	db 1, VINE_WHIP
	db 6, GROWTH
	db 9, WRAP
	db 11, SLEEP_POWDER
	db 14, ACID
	db 17, STUN_SPORE
	db 20, POISONPOWDER
	db 25, LEECH_LIFE
	db 30, SWEET_SCENT
	db 34, GIGA_DRAIN
	db 38, SLAM
	db 0 ; no more level-up moves

WeepinbellEvosAttacks:
	db EVOLVE_ITEM, LEAF_STONE, VICTREEBEL
	db 0 ; no more evolutions
	db 1, RAGE
	db 1, VINE_WHIP
	db 1, GROWTH
	db 9, WRAP
	db 11, SLEEP_POWDER
	db 14, ACID
	db 17, STUN_SPORE
	db 20, POISONPOWDER
	db 28, LEECH_LIFE
	db 33, SWEET_SCENT
	db 38, GIGA_DRAIN
	db 44, SLAM
	db 0 ; no more level-up moves

VictreebelEvosAttacks:
	db 0 ; no more evolutions
	db 1, VINE_WHIP
	db 1, SLEEP_POWDER
	db 1, SWEET_KISS
	db 1, RAZOR_LEAF
	db 32, LEECH_LIFE
	db 35, SLUDGE_BOMB
	db 0 ; no more level-up moves

TentacoolEvosAttacks:
	db EVOLVE_LEVEL, 30, TENTACRUEL
	db 0 ; no more evolutions
	db 1, POISON_STING
	db 6, SUPERSONIC
	db 12, CONSTRICT
	db 19, ACID
	db 25, BUBBLEBEAM
	db 30, WRAP
	db 36, BARRIER
	db 39, DAZZLING_GLEAM
	db 43, SCREECH
	db 49, HYDRO_PUMP
	db 0 ; no more level-up moves

TentacruelEvosAttacks:
	db 0 ; no more evolutions
	db 1, POISON_STING
	db 1, SUPERSONIC
	db 1, CONSTRICT
	db 19, ACID
	db 25, BUBBLEBEAM
	db 30, WRAP
	db 34, SLUDGE_BOMB
	db 38, BARRIER
	db 42, DAZZLING_GLEAM
	db 44, CONFUSE_RAY
	db 47, GIGA_DRAIN
	db 49, SCREECH
	db 55, HYDRO_PUMP
	db 0 ; no more level-up moves

GeodudeEvosAttacks:
	db EVOLVE_LEVEL, 25, GRAVELER
	db 0 ; no more evolutions
	db 1, TACKLE
	db 4, HARDEN
	db 8, ROCK_THROW
	db 12, SANDSTORM
	db 15, MAGNITUDE
	db 18, RAPID_SPIN
	db 21, SELFDESTRUCT
	db 23, MEGA_PUNCH
	db 26, ROLLOUT
	db 31, ROCK_SLIDE
	db 36, EARTHQUAKE
	db 41, EXPLOSION
	db 0 ; no more level-up moves

GravelerEvosAttacks:
	db EVOLVE_LEVEL, 36, GOLEM
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, HARDEN
	db 1, ROCK_THROW
	db 12, SANDSTORM
	db 15, MAGNITUDE
	db 18, RAPID_SPIN
	db 21, SELFDESTRUCT
	db 24, MEGA_PUNCH
	db 28, ROLLOUT
	db 34, ROCK_SLIDE
	db 41, EARTHQUAKE
	db 48, EXPLOSION
	db 0 ; no more level-up moves

GolemEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, HARDEN
	db 1, ROCK_THROW
	db 1, MAGNITUDE
	db 12, SANDSTORM
	db 18, RAPID_SPIN
	db 21, SELFDESTRUCT
	db 24, MEGA_PUNCH
	db 28, ROLLOUT
	db 34, ROCK_SLIDE
	db 38, BODY_SLAM
	db 43, EARTHQUAKE
	db 50, EXPLOSION
	db 55, FISSURE
	db 0 ; no more level-up moves

PonytaEvosAttacks:
	db EVOLVE_LEVEL, 40, RAPIDASH
	db 0 ; no more evolutions
	db 1, TACKLE
	db 4, GROWL
	db 8, TAIL_WHIP
	db 13, EMBER
	db 19, STOMP
	db 26, FIRE_SPIN
	db 29, FLAMETHROWER
	db 34, TAKE_DOWN
	db 43, AGILITY
	db 53, FIRE_BLAST
	db 0 ; no more level-up moves

RapidashEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, GROWL
	db 1, EMBER
	db 1, HYPNOSIS
	db 8, TAIL_WHIP
	db 19, STOMP
	db 26, FIRE_SPIN
	db 29, FLAMETHROWER
	db 34, TAKE_DOWN
	db 40, FURY_ATTACK
	db 41, JUMP_KICK ; New Exclusive Midele Move
	db 43, AGILITY
	db 46, MEGAHORN
	db 49, HORN_DRILL
	db 52, EXTREMESPEED ; New Exclusive Midele Move
	db 55, HI_JUMP_KICK ; New Exclusive Midele Move
	db 58, FIRE_BLAST
	db 62, SWORDS_DANCE
	db 0 ; no more level-up moves

SlowpokeEvosAttacks:
	db EVOLVE_LEVEL, 37, SLOWBRO
	db EVOLVE_ITEM, KINGS_ROCK, SLOWKING
	db 0 ; no more evolutions
	db 1, CURSE
	db 1, PAY_DAY
	db 6, GROWL
	db 9, WATER_GUN
	db 11, RAIN_DANCE
	db 14, CONFUSION
	db 17, FLAMETHROWER
	db 20, DISABLE
	db 23, BUBBLEBEAM
	db 26, PSYBEAM
	db 30, HEADBUTT
	db 34, ICY_WIND
	db 38, BODY_SLAM
	db 43, AMNESIA
	db 48, PSYCHIC_M
	db 53, LIGHT_SCREEN
	db 0 ; no more level-up moves

SlowbroEvosAttacks:
	db 0 ; no more evolutions
	db 1, CURSE
	db 1, PAY_DAY
	db 1, GROWL
	db 1, WATER_GUN
	db 11, RAIN_DANCE
	db 14, CONFUSION
	db 17, FLAMETHROWER
	db 20, DISABLE
	db 23, BUBBLEBEAM
	db 26, PSYBEAM
	db 30, HEADBUTT
	db 34, ICY_WIND
	db 37, WITHDRAW
	db 42, BODY_SLAM
	db 46, AMNESIA
	db 54, PSYCHIC_M
	db 58, LIGHT_SCREEN
	db 0 ; no more level-up moves

MagnemiteEvosAttacks:
	db EVOLVE_LEVEL, 30, MAGNETON
	db 0 ; no more evolutions
	db 1, TACKLE
	db 6, THUNDERSHOCK
	db 9, SUPERSONIC
	db 12, SONICBOOM
	db 15, THUNDER_WAVE
	db 18, SWIFT
	db 21, SPARK
	db 24, THUNDERBOLT
	db 29, LOCK_ON
	db 33, CONFUSE_RAY
	db 39, SCREECH
	db 45, ZAP_CANNON
	db 0 ; no more level-up moves

MagnetonEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, THUNDERSHOCK
	db 1, SUPERSONIC
	db 1, SONICBOOM
	db 15, THUNDER_WAVE
	db 18, SWIFT
	db 21, SPARK
	db 24, THUNDERBOLT
	db 29, LOCK_ON
	db 33, CONFUSE_RAY
	db 36, TRI_ATTACK
	db 39, REFLECT
	db 41, LIGHT_SCREEN
	db 43, SCREECH
	db 46, EXPLOSION
	db 49, SUBSTITUTE
	db 53, ZAP_CANNON
	db 0 ; no more level-up moves

FarfetchDEvosAttacks:
	db 0 ; no more evolutions
	db 1, PECK
	db 1, SAND_ATTACK
	db 6, QUICK_ATTACK
	db 9, FURY_ATTACK
	db 13, MIRROR_MOVE
	db 16, SUBSTITUTE
	db 19, FURY_CUTTER
	db 21, AGILITY
	db 23, WING_ATTACK ; New Exclusive Midele Move
	db 25, SLASH
	db 27, SWORDS_DANCE
	db 29, STEEL_WING
	db 31, SKY_ATTACK
	db 33, BODY_SLAM
	db 35, BATON_PASS
	db 37, FALSE_SWIPE
	db 39, DOUBLE_EDGE
	db 41, IRON_TAIL
	db 43, FLAIL
	db 0 ; no more level-up moves

DoduoEvosAttacks:
	db EVOLVE_LEVEL, 31, DODRIO
	db 0 ; no more evolutions
	db 1, PECK
	db 1, GROWL
	db 6, MIRROR_MOVE
	db 9, QUICK_ATTACK
	db 13, FURY_ATTACK
	db 17, WING_ATTACK
	db 19, RAGE
	db 24, LOW_KICK
	db 28, ENDURE
	db 30, AGILITY
	db 33, JUMP_KICK
	db 37, DRILL_PECK
	db 42, SWORDS_DANCE
	db 0 ; no more level-up moves

DodrioEvosAttacks:
	db 0 ; no more evolutions
	db 1, PECK
	db 1, GROWL
	db 1, FURY_ATTACK
	db 6, MIRROR_MOVE
	db 9, QUICK_ATTACK
	db 17, WING_ATTACK
	db 19, RAGE
	db 24, LOW_KICK
	db 28, ENDURE
	db 30, AGILITY
	db 35, JUMP_KICK
	db 38, DRILL_PECK
	db 42, BATON_PASS
	db 47, SWORDS_DANCE
	db 53, DOUBLE_EDGE
	db 58, THRASH
	db 0 ; no more level-up moves

SeelEvosAttacks:
	db EVOLVE_LEVEL, 34, DEWGONG
	db 0 ; no more evolutions
	db 1, HEADBUTT
	db 5, GROWL
	db 16, AURORA_BEAM
	db 21, REST
	db 24, BUBBLEBEAM
	db 28, RAIN_DANCE
	db 32, TAKE_DOWN
	db 35, DISABLE
	db 37, ICE_BEAM
	db 40, HORN_DRILL
	db 43, FLAIL
	db 48, SAFEGUARD
	db 0 ; no more level-up moves

DewgongEvosAttacks:
	db 0 ; no more evolutions
	db 1, HEADBUTT
	db 1, GROWL
	db 1, AURORA_BEAM
	db 21, REST
	db 24, BUBBLEBEAM
	db 28, RAIN_DANCE
	db 32, TAKE_DOWN
	db 37, DISABLE
	db 42, ICE_BEAM
	db 45, HORN_DRILL
	db 47, FLAIL
	db 49, PERISH_SONG
	db 51, MEGAHORN
	db 54, SAFEGUARD
	db 0 ; no more level-up moves

GrimerEvosAttacks:
	db EVOLVE_LEVEL, 38, MUK
	db 0 ; no more evolutions
	db 1, POISON_GAS
	db 1, POUND
	db 5, HARDEN
	db 10, DISABLE
	db 16, SLUDGE
	db 23, MINIMIZE
	db 31, GIGA_DRAIN
	db 35, SCREECH
	db 40, ACID_ARMOR
	db 50, SLUDGE_BOMB
	db 0 ; no more level-up moves

MukEvosAttacks:
	db 0 ; no more evolutions
	db 1, POISON_GAS
	db 1, POUND
	db 1, HARDEN
	db 10, DISABLE
	db 16, SLUDGE
	db 23, MINIMIZE
	db 31, GIGA_DRAIN
	db 35, SCREECH
	db 43, ACID_ARMOR
	db 46, ROCK_SLIDE
	db 50, EXPLOSION
	db 54, SLUDGE_BOMB
	db 57, PAIN_SPLIT
	db 0 ; no more level-up moves

ShellderEvosAttacks:
	db EVOLVE_ITEM, WATER_STONE, CLOYSTER
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, WITHDRAW
	db 9, SCREECH
	db 17, AURORA_BEAM
	db 25, SUPERSONIC
	db 29, BUBBLEBEAM
	db 33, SPIKES
	db 36, PROTECT
	db 41, CLAMP
	db 49, ICE_BEAM
	db 0 ; no more level-up moves

CloysterEvosAttacks:
	db 0 ; no more evolutions
	db 1, WITHDRAW
	db 1, SUPERSONIC
	db 1, AURORA_BEAM
	db 1, PROTECT
	db 9, SCREECH
	db 33, SPIKES
	db 41, SPIKE_CANNON
	db 45, HYDRO_PUMP
	db 52, EXPLOSION
	db 0 ; no more level-up moves

GastlyEvosAttacks:
	db EVOLVE_LEVEL, 25, HAUNTER
	db 0 ; no more evolutions
	db 1, HYPNOSIS
	db 1, LICK
	db 6, CONFUSION
	db 9, MEAN_LOOK
	db 11, NIGHT_SHADE
	db 14, CURSE
	db 17, POISON_GAS
	db 20, CONFUSE_RAY
	db 26, ICY_WIND
	db 33, DREAM_EATER
	db 36, DESTINY_BOND
	db 40, EXPLOSION
	db 43, SPITE
	db 0 ; no more level-up moves

HaunterEvosAttacks:
	db EVOLVE_LEVEL, 36, GENGAR
	db 0 ; no more evolutions
	db 1, HYPNOSIS
	db 1, LICK
	db 1, CONFUSION
	db 6, MEAN_LOOK
	db 11, NIGHT_SHADE
	db 14, CURSE
	db 17, POISON_GAS
	db 20, CONFUSE_RAY
	db 29, ICY_WIND
	db 39, DREAM_EATER
	db 48, DESTINY_BOND
	db 53, EXPLOSION
	db 56, SPITE
	db 0 ; no more level-up moves

GengarEvosAttacks:
	db 0 ; no more evolutions
	db 1, HYPNOSIS
	db 1, LICK
	db 1, CONFUSION
	db 1, MEAN_LOOK
	db 11, NIGHT_SHADE
	db 14, CURSE
	db 17, POISON_GAS
	db 20, CONFUSE_RAY
	db 29, ICY_WIND
	db 42, DREAM_EATER
	db 50, DESTINY_BOND
	db 56, EXPLOSION
	db 59, SPITE
	db 0 ; no more level-up moves

OnixEvosAttacks:
	db EVOLVE_ITEM, METAL_COAT, STEELIX
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, HARDEN
	db 10, BIND
	db 14, ROCK_THROW
	db 18, SHARPEN
	db 23, SCREECH
	db 27, RAGE
	db 33, ROCK_SLIDE
	db 36, SANDSTORM
	db 40, SLAM
	db 54, EXPLOSION
	db 0 ; no more level-up moves

DrowzeeEvosAttacks:
	db EVOLVE_LEVEL, 26, HYPNO
	db 0 ; no more evolutions
	db 1, POUND
	db 1, HYPNOSIS
	db 10, MEDITATE
	db 16, CONFUSION
	db 20, HEADBUTT
	db 24, PSYBEAM
	db 30, POISON_GAS
	db 33, DAZZLING_GLEAM
	db 36, DISABLE
	db 40, PSYCHIC_M
	db 43, PSYCH_UP
	db 45, FUTURE_SIGHT
	db 48, BELLY_DRUM
	db 53, NASTY_PLOT
	db 0 ; no more level-up moves

HypnoEvosAttacks:
	db 0 ; no more evolutions
	db 1, SUBSTITUTE
	db 1, HYPNOSIS
	db 1, MEDITATE
	db 1, CONFUSION
	db 20, HEADBUTT
	db 24, PSYBEAM
	db 33, POISON_GAS
	db 36, DAZZLING_GLEAM
	db 40, DISABLE
	db 46, PSYCHIC_M
	db 49, PSYCH_UP
	db 53, FUTURE_SIGHT
	db 56, BELLY_DRUM
	db 59, BATON_PASS
	db 63, NASTY_PLOT
	db 0 ; no more level-up moves

KrabbyEvosAttacks:
	db EVOLVE_LEVEL, 28, KINGLER
	db 0 ; no more evolutions
	db 1, BUBBLE
	db 5, LEER
	db 9, HARDEN
	db 12, VICEGRIP
	db 16, METAL_CLAW
	db 23, STOMP
	db 27, GUILLOTINE
	db 30, PROTECT
	db 34, CRABHAMMER
	db 0 ; no more level-up moves

KinglerEvosAttacks:
	db 0 ; no more evolutions
	db 1, BUBBLE
	db 1, LEER
	db 1, HARDEN
	db 1, VICEGRIP
	db 16, METAL_CLAW
	db 23, STOMP
	db 27, GUILLOTINE
	db 32, PROTECT
	db 35, SWORDS_DANCE
	db 38, CRABHAMMER
	db 41, AGILITY
	db 43, BODY_SLAM
	db 46, ROCK_SLIDE
	db 52, AMNESIA
	db 55, FLAIL
	db 0 ; no more level-up moves

VoltorbEvosAttacks:
	db EVOLVE_LEVEL, 30, ELECTRODE
	db 0 ; no more evolutions
	db 1, TACKLE
	db 4, THUNDERSHOCK
	db 9, SCREECH
	db 17, SONICBOOM
	db 21, SPARK
	db 23, SELFDESTRUCT
	db 26, THUNDERBOLT
	db 29, ROLLOUT
	db 31, THUNDER_WAVE
	db 33, LIGHT_SCREEN
	db 37, SWIFT
	db 39, EXPLOSION
	db 41, MIRROR_COAT
	db 0 ; no more level-up moves

ElectrodeEvosAttacks:
	db 0 ; no more evolutions
	db 1, SWIFT
	db 1, SCREECH
	db 1, SONICBOOM
	db 1, SPARK
	db 23, SELFDESTRUCT
	db 26, THUNDERBOLT
	db 29, ROLLOUT
	db 32, THUNDER_WAVE
	db 34, LIGHT_SCREEN
	db 37, SUBSTITUTE
	db 40, RAIN_DANCE
	db 40, THUNDER
	db 44, EXPLOSION
	db 48, MIRROR_COAT
	db 0 ; no more level-up moves

ExeggcuteEvosAttacks:
	db EVOLVE_ITEM, LEAF_STONE, EXEGGUTOR
	db 0 ; no more evolutions
	db 1, MEGA_DRAIN
	db 1, HYPNOSIS
	db 7, REFLECT
	db 9, LEECH_SEED
	db 12, CONFUSION
	db 18, STUN_SPORE
	db 21, POISONPOWDER
	db 23, SLEEP_POWDER
	db 25, PSYBEAM
	db 27, SYNTHESIS
	db 33, ANCIENTPOWER
	db 36, GIGA_DRAIN
	db 43, SOLARBEAM
	db 48, NASTY_PLOT ; New Exclusive Midele Move
	db 0 ; no more level-up moves

ExeggutorEvosAttacks:
	db 0 ; no more evolutions
	db 1, MEGA_DRAIN
	db 1, HYPNOSIS
	db 1, FUTURE_SIGHT
	db 19, STOMP
	db 21, LOW_KICK
	db 27, PSYBEAM
	db 30, SYNTHESIS
	db 32, DREAM_EATER
	db 34, GROWTH
	db 36, ANCIENTPOWER
	db 38, GIGA_DRAIN
	db 40, EARTHQUAKE
	db 43, PSYCHIC_M
	db 46, EXPLOSION
	db 53, NASTY_PLOT ; New Exclusive Midele Move
	db 0 ; no more level-up moves

CuboneEvosAttacks:
	db EVOLVE_LEVEL, 28, MAROWAK
	db 0 ; no more evolutions
	db 1, GROWL
	db 1, RAGE
	db 5, LEER
	db 9, BONE_CLUB
	db 13, HEADBUTT
	db 17, DOUBLE_KICK
	db 21, BONE_RUSH
	db 25, FOCUS_ENERGY
	db 29, BONEMERANG
	db 33, FALSE_SWIPE
	db 37, THRASH
	db 41, SWORDS_DANCE
	db 0 ; no more level-up moves

MarowakEvosAttacks:
	db 0 ; no more evolutions
	db 1, GROWL
	db 1, RAGE
	db 1, LEER
	db 1, BONE_CLUB
	db 13, HEADBUTT
	db 17, DOUBLE_KICK
	db 21, BONE_RUSH
	db 25, FOCUS_ENERGY
	db 32, BONEMERANG
	db 36, ROCK_SLIDE
	db 39, FALSE_SWIPE
	db 42, SUBMISSION
	db 46, THRASH
	db 53, SWORDS_DANCE
	db 0 ; no more level-up moves

HitmonleeEvosAttacks:
	db 0 ; no more evolutions
	db 1, DOUBLE_KICK
	db 1, MEDITATE
	db 21, FOCUS_ENERGY
	db 24, FORESIGHT
	db 28, ROLLING_KICK
	db 31, MIND_READER
	db 34, ROCK_SLIDE
	db 40, JUMP_KICK
	db 46, MEGA_KICK
	db 52, HI_JUMP_KICK
	db 56, REVERSAL
	db 56, ENDURE
	db 0 ; no more level-up moves

HitmonchanEvosAttacks:
	db 0 ; no more evolutions
	db 1, THUNDERPUNCH
	db 1, ICE_PUNCH
	db 1, FIRE_PUNCH
	db 1, MACH_PUNCH
	db 7, AGILITY
	db 21, COUNTER
	db 24, MEGA_PUNCH
	db 27, ROCK_SLIDE
	db 30, SUBMISSION
	db 34, DETECT
	db 40, DYNAMICPUNCH
	db 44, SWORDS_DANCE
	db 48, HI_JUMP_KICK
	db 0 ; no more level-up moves

LickitungEvosAttacks:
	db 0 ; no more evolutions
	db 1, LICK
	db 1, SUPERSONIC
	db 1, SUBSTITUTE
	db 7, AMNESIA
	db 11, WRAP
	db 16, STOMP
	db 20, DISABLE
	db 25, ROCK_SLIDE
	db 29, SLAM
	db 34, SUBMISSION
	db 37, CURSE
	db 39, SCREECH
	db 42, BODY_SLAM
	db 44, SWORDS_DANCE
	db 47, DOUBLE_EDGE
	db 51, FISSURE
	db 54, HEAL_BELL
	db 57, THRASH
	db 60, BELLY_DRUM
	db 64, SEISMIC_TOSS
	db 0 ; no more level-up moves

KoffingEvosAttacks:
	db EVOLVE_LEVEL, 35, WEEZING
	db 0 ; no more evolutions
	db 1, POISON_GAS
	db 1, TACKLE
	db 9, SMOG
	db 17, SMOKESCREEN
	db 21, SLUDGE
	db 25, SELFDESTRUCT
	db 33, HAZE
	db 41, EXPLOSION
	db 45, DESTINY_BOND
	db 0 ; no more level-up moves

WeezingEvosAttacks:
	db 0 ; no more evolutions
	db 1, POISON_GAS
	db 1, TACKLE
	db 1, SMOG
	db 1, SMOKESCREEN
	db 21, SLUDGE
	db 25, SELFDESTRUCT
	db 33, HAZE
	db 44, EXPLOSION
	db 51, DESTINY_BOND
	db 0 ; no more level-up moves

RhyhornEvosAttacks:
	db EVOLVE_LEVEL, 42, RHYDON
	db 0 ; no more evolutions
	db 1, HORN_ATTACK
	db 1, TAIL_WHIP
	db 13, STOMP
	db 19, FURY_ATTACK
	db 24, ROCK_SLIDE
	db 31, SCARY_FACE
	db 37, HORN_DRILL
	db 49, TAKE_DOWN
	db 55, EARTHQUAKE
	db 0 ; no more level-up moves

RhydonEvosAttacks:
	db 0 ; no more evolutions
	db 1, HORN_ATTACK
	db 1, TAIL_WHIP
	db 1, STOMP
	db 1, FURY_ATTACK
	db 24, ROCK_SLIDE
	db 31, SCARY_FACE
	db 37, HORN_DRILL
	db 43, SUBMISSION
	db 46, SWORDS_DANCE
	db 54, TAKE_DOWN
	db 59, MEGAHORN
	db 65, EARTHQUAKE
	db 0 ; no more level-up moves

ChanseyEvosAttacks:
	db EVOLVE_HAPPINESS, TR_ANYTIME, BLISSEY
	db 0 ; no more evolutions
	db 1, FAIRY_WIND
	db 5, GROWL
	db 9, TAIL_WHIP
	db 13, SOFTBOILED
	db 17, DOUBLESLAP
	db 20, METRONOME
	db 23, MINIMIZE
	db 26, BUBBLEBEAM
	db 29, SING
	db 35, EGG_BOMB
	db 38, SEISMIC_TOSS
	db 41, DEFENSE_CURL
	db 49, LIGHT_SCREEN
	db 57, DOUBLE_EDGE
	db 63, DAZZLING_GLEAM
	db 0 ; no more level-up moves

TangelaEvosAttacks:
	db 0 ; no more evolutions
	db 1, BIND
	db 4, SLEEP_POWDER
	db 7, ABSORB
	db 10, REFLECT
	db 13, POISONPOWDER
	db 16, GROWTH
	db 19, VINE_WHIP
	db 25, MIMIC
	db 28, GIGA_DRAIN
	db 31, SUBSTITUTE
	db 34, STUN_SPORE
	db 38, ANCIENTPOWER
	db 40, SLAM
	db 43, LEECH_SEED
	db 49, SWORDS_DANCE
	db 51, BODY_SLAM
	db 54, PAIN_SPLIT
	db 61, DOUBLE_EDGE
	db 0 ; no more level-up moves

KangaskhanEvosAttacks:
	db 0 ; no more evolutions
	db 1, COMET_PUNCH
	db 7, LEER
	db 13, BITE
	db 19, TAIL_WHIP
	db 25, MEGA_PUNCH
	db 31, RAGE
	db 37, ENDURE
	db 41, SUBMISSION
	db 43, DIZZY_PUNCH
	db 49, REVERSAL
	db 54, BODY_SLAM
	db 58, ROCK_SLIDE
	db 0 ; no more level-up moves

HorseaEvosAttacks:
	db EVOLVE_LEVEL, 32, SEADRA
	db 0 ; no more evolutions
	db 1, BUBBLE
	db 8, SMOKESCREEN
	db 15, LEER
	db 22, WATER_GUN
	db 29, TWISTER
	db 33, BUBBLEBEAM
	db 36, AGILITY
	db 41, HYDRO_PUMP
	db 44, OUTRAGE
	db 0 ; no more level-up moves

SeadraEvosAttacks:
	db EVOLVE_ITEM, DRAGON_SCALE, KINGDRA
	db 0 ; no more evolutions
	db 1, BUBBLE
	db 1, SMOKESCREEN
	db 1, LEER
	db 1, WATER_GUN
	db 29, TWISTER
	db 35, BUBBLEBEAM
	db 38, AGILITY
	db 44, HYDRO_PUMP
	db 48, OUTRAGE
	db 0 ; no more level-up moves

GoldeenEvosAttacks:
	db EVOLVE_LEVEL, 33, SEAKING
	db 0 ; no more evolutions
	db 1, TAIL_WHIP
	db 1, PECK
	db 5, QUICK_ATTACK
	db 10, SUPERSONIC
	db 13, WATER_GUN
	db 15, HORN_ATTACK
	db 20, PSYBEAM
	db 24, FLAIL
	db 29, FURY_ATTACK
	db 32, BUBBLEBEAM
	db 40, SWORDS_DANCE
	db 43, HORN_DRILL
	db 52, AGILITY
	db 0 ; no more level-up moves

SeakingEvosAttacks:
	db 0 ; no more evolutions
	db 1, TAIL_WHIP
	db 1, PECK
	db 1, QUICK_ATTACK
	db 1, SUPERSONIC
	db 15, HORN_ATTACK
	db 20, PSYBEAM
	db 24, FLAIL
	db 29, FURY_ATTACK
	db 32, BUBBLEBEAM
	db 33, LOVELY_KISS ; New Exclusive Midele Move
	db 35, DRILL_PECK ; New Exclusive Midele Move
	db 38, BODY_SLAM
	db 43, SWORDS_DANCE
	db 49, HORN_DRILL
	db 52, AGILITY
	db 55, HYDRO_PUMP
	db 58, DOUBLE_EDGE
	db 0 ; no more level-up moves

StaryuEvosAttacks:
	db EVOLVE_ITEM, WATER_STONE, STARMIE
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, HARDEN
	db 7, WATER_GUN
	db 13, RAPID_SPIN
	db 16, ICY_WIND
	db 19, RECOVER
	db 25, SWIFT
	db 31, BUBBLEBEAM
	db 37, MINIMIZE
	db 43, LIGHT_SCREEN
	db 47, PSYCHIC_M
	db 50, HYDRO_PUMP
	db 53, DAZZLING_GLEAM
	db 0 ; no more level-up moves

StarmieEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, RAPID_SPIN
	db 1, RECOVER
	db 1, BUBBLEBEAM
	db 16, ICY_WIND
	db 37, CONFUSE_RAY
	db 43, LIGHT_SCREEN
	db 47, PSYCHIC_M
	db 50, HYDRO_PUMP
	db 53, DAZZLING_GLEAM
	db 0 ; no more level-up moves

MrMimeEvosAttacks:
	db 0 ; no more evolutions
	db 1, MEDITATE
	db 1, CONFUSION
	db 5, CONFUSE_RAY
	db 8, METRONOME
	db 11, SUBSTITUTE
	db 16, BARRIER
	db 19, HYPNOSIS
	db 21, DOUBLESLAP
	db 26, LIGHT_SCREEN
	db 26, REFLECT
	db 31, ENCORE
	db 34, PSYBEAM
	db 38, BATON_PASS
	db 42, DAZZLING_GLEAM
	db 44, PSYCHIC_M
	db 46, SAFEGUARD
	db 49, MIMIC
	db 54, THUNDER_WAVE
	db 58, NASTY_PLOT
	db 0 ; no more level-up moves

ScytherEvosAttacks:
	db EVOLVE_ITEM, METAL_COAT, SCIZOR
	db 0 ; no more evolutions
	db 1, QUICK_ATTACK
	db 1, LEER
	db 6, FOCUS_ENERGY
	db 18, FALSE_SWIPE
	db 24, AGILITY
	db 30, WING_ATTACK
	db 36, SLASH
	db 41, SWORDS_DANCE
	db 45, LEECH_LIFE ; New Exclusive Midele Move
	db 0 ; no more level-up moves

JynxEvosAttacks:
	db 0 ; no more evolutions
	db 1, DOUBLESLAP
	db 1, REFLECT
	db 1, METRONOME
	db 1, COUNTER
	db 7, LICK
	db 14, POWDER_SNOW
	db 22, BODY_SLAM
	db 30, ICE_PUNCH
	db 31, HEAL_BELL
	db 35, LOVELY_KISS
	db 37, MEAN_LOOK
	db 41, PSYCHIC_M
	db 45, PETAL_DANCE
	db 51, PERISH_SONG
	db 57, BLIZZARD
	db 0 ; no more level-up moves

ElectabuzzEvosAttacks:
	db 0 ; no more evolutions
	db 1, QUICK_ATTACK
	db 1, LEER
	db 1, THUNDERPUNCH
	db 17, LIGHT_SCREEN
	db 25, SWIFT
	db 36, SCREECH
	db 41, CROSS_CHOP
	db 47, THUNDERBOLT
	db 58, THUNDER
	db 0 ; no more level-up moves

MagmarEvosAttacks:
	db 0 ; no more evolutions
	db 1, EMBER
	db 1, LEER
	db 1, SMOG
	db 1, FIRE_PUNCH
	db 18, POISON_GAS
	db 25, SMOKESCREEN
	db 33, SUNNY_DAY
	db 37, CROSS_CHOP
	db 41, FLAMETHROWER
	db 49, CONFUSE_RAY
	db 57, FIRE_BLAST
	db 0 ; no more level-up moves

PinsirEvosAttacks:
	db 0 ; no more evolutions
	db 1, BIND
	db 1, HARDEN
	db 4, VICEGRIP
	db 7, FOCUS_ENERGY
	db 10, FALSE_SWIPE
	db 13, QUICK_ATTACK
	db 17, SEISMIC_TOSS
	db 20, SLASH
	db 24, SUBSTITUTE
	db 27, VITAL_THROW
	db 31, GUILLOTINE
	db 34, CURSE
	db 37, SUBMISSION
	db 40, ROCK_SLIDE
	db 43, SWORDS_DANCE
	db 47, LEECH_LIFE ; New Exclusive Midele Move
	db 50, CROSS_CHOP ; New Exclusive Midele Move
	db 54, REVERSAL
	db 54, ENDURE
	db 60, THRASH
	db 0 ; no more level-up moves

TaurosEvosAttacks:
	db 0 ; no more evolutions
	db 1, RAGE
	db 4, TAIL_WHIP
	db 13, QUICK_ATTACK
	db 19, SCARY_FACE
	db 26, HORN_ATTACK
	db 34, HORN_DRILL
	db 38, BODY_SLAM
	db 43, ROCK_SLIDE
	db 47, REST
	db 53, MEGAHORN
	db 56, THRASH
	db 59, REVERSAL
	db 61, DOUBLE_EDGE
	db 0 ; no more level-up moves

MagikarpEvosAttacks:
	db EVOLVE_LEVEL, 20, GYARADOS
	db 0 ; no more evolutions
	db 1, SPLASH
	db 5, TACKLE
	db 10, BUBBLE
	db 30, FLAIL
	db 35, DRAGON_RAGE
	db 40, HYDRO_PUMP
	db 45, REVERSAL
	db 0 ; no more level-up moves

GyaradosEvosAttacks:
	db 0 ; no more evolutions
	db 1, TWISTER
	db 1, LEER
	db 20, BITE
	db 25, RAIN_DANCE
	db 33, BODY_SLAM
	db 35, DRAGON_RAGE
	db 40, HYDRO_PUMP
	db 45, THRASH
	db 50, THUNDER_WAVE
	db 54, HYPER_BEAM
	db 60, OUTRAGE
	db 0 ; no more level-up moves

LaprasEvosAttacks:
	db 0 ; no more evolutions
	db 1, DRAGON_RAGE
	db 1, WATER_GUN
	db 1, GROWL
	db 1, SING
	db 8, MIST
	db 15, BITE
	db 18, CONFUSE_RAY
	db 22, BODY_SLAM
	db 29, PERISH_SONG
	db 31, BUBBLEBEAM
	db 33, HEAL_BELL
	db 36, ICE_BEAM
	db 40, RAIN_DANCE
	db 43, MEGAHORN
	db 46, HORN_DRILL
	db 50, SAFEGUARD
	db 57, HYDRO_PUMP
	db 0 ; no more level-up moves

DittoEvosAttacks:
	db 0 ; no more evolutions
	db 1, TRANSFORM
	db 0 ; no more level-up moves

EeveeEvosAttacks:
	db EVOLVE_ITEM, WATER_STONE, VAPOREON
	db EVOLVE_ITEM, THUNDERSTONE, JOLTEON
	db EVOLVE_ITEM, FIRE_STONE, FLAREON
	db EVOLVE_HAPPINESS, TR_MORNDAY, ESPEON
	db EVOLVE_HAPPINESS, TR_NITE, UMBREON
	db 0 ; no more evolutions
	db 1, GROWL
	db 1, PAY_DAY
	db 4, REFLECT
	db 8, SAND_ATTACK
	db 13, GROWTH
	db 16, TAIL_WHIP
	db 21, DOUBLE_KICK
	db 23, QUICK_ATTACK
	db 26, HEAL_BELL
	db 30, BITE
	db 36, BATON_PASS
	db 39, FOCUS_ENERGY
	db 42, TAKE_DOWN
	db 48, DOUBLE_EDGE
	db 54, SING
	db 0 ; no more level-up moves

VaporeonEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, TAIL_WHIP
	db 8, SAND_ATTACK
	db 16, WATER_GUN
	db 23, QUICK_ATTACK
	db 26, AURORA_BEAM
	db 30, BITE
	db 37, HAZE
	db 45, ACID_ARMOR
	db 52, HYDRO_PUMP
	db 0 ; no more level-up moves

JolteonEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, TAIL_WHIP
	db 8, SAND_ATTACK
	db 16, THUNDERSHOCK
	db 21, PIN_MISSILE
	db 23, QUICK_ATTACK
	db 26, BITE
	db 28, REFLECT
	db 30, DOUBLE_KICK
	db 36, LIGHT_SCREEN
	db 39, THUNDER_WAVE
	db 42, THUNDERBOLT
	db 47, AGILITY
	db 52, THUNDER
	db 0 ; no more level-up moves

FlareonEvosAttacks:
	db 0 ; no more evolutions
	db 1, SMOG
	db 1, LEER
	db 8, SAND_ATTACK
	db 16, EMBER
	db 21, FLAME_WHEEL
	db 23, QUICK_ATTACK
	db 26, ZAP_CANNON
	db 28, CURSE
	db 30, BITE
	db 33, FIRE_SPIN
	db 36, SCARY_FACE
	db 40, IRON_TAIL
	db 43, BODY_SLAM
	db 47, FLAMETHROWER
	db 52, DOUBLE_EDGE
	db 0 ; no more level-up moves

PorygonEvosAttacks:
	db EVOLVE_ITEM, UP_GRADE, PORYGON2
	db 0 ; no more evolutions
	db 1, TAKE_DOWN
	db 1, SUBSTITUTE
	db 8, THUNDERSHOCK
	db 11, AGILITY
	db 14, PSYBEAM
	db 17, CONVERSION
	db 17, CONVERSION2
	db 19, RECOVER
	db 22, SPARK
	db 24, SHARPEN
	db 27, TRI_ATTACK
	db 33, REFLECT
	db 37, DOUBLE_EDGE
	db 42, PSYCHIC_M
	db 46, ZAP_CANNON
	db 46, LOCK_ON
	db 51, BARRIER
	db 54, THUNDER_WAVE
	db 0 ; no more level-up moves

OmanyteEvosAttacks:
	db EVOLVE_LEVEL, 40, OMASTAR
	db 0 ; no more evolutions
	db 1, CONSTRICT
	db 1, WITHDRAW
	db 7, LEER
	db 13, BITE
	db 19, WATER_GUN
	db 24, ICY_WIND
	db 34, SPIKES
	db 37, PROTECT
	db 49, ANCIENTPOWER
	db 55, HYDRO_PUMP
	db 0 ; no more level-up moves

OmastarEvosAttacks:
	db 0 ; no more evolutions
	db 1, CONSTRICT
	db 1, WITHDRAW
	db 1, BITE
	db 7, LEER
	db 19, WATER_GUN
	db 24, ICY_WIND
	db 34, SPIKES
	db 37, PROTECT
	db 40, SPIKE_CANNON
	db 43, HORN_DRILL
	db 46, SEISMIC_TOSS
	db 49, CRUNCH
	db 54, ANCIENTPOWER
	db 60, HYDRO_PUMP
	db 0 ; no more level-up moves

KabutoEvosAttacks:
	db EVOLVE_LEVEL, 40, KABUTOPS
	db 0 ; no more evolutions
	db 1, SCRATCH
	db 1, HARDEN
	db 10, ABSORB
	db 19, LEER
	db 24, MEGA_DRAIN
	db 28, SAND_ATTACK
	db 37, ENDURE
	db 43, LEECH_LIFE
	db 55, ANCIENTPOWER
	db 0 ; no more level-up moves

KabutopsEvosAttacks:
	db 0 ; no more evolutions
	db 1, SCRATCH
	db 1, HARDEN
	db 1, ABSORB
	db 1, RAPID_SPIN
	db 19, LEER
	db 24, MEGA_DRAIN
	db 28, SAND_ATTACK
	db 37, ENDURE
	db 40, SLASH
	db 43, SUBMISSION
	db 46, SWORDS_DANCE
	db 49, LEECH_LIFE
	db 51, ANCIENTPOWER
	db 54, MEGA_KICK
	db 57, HYDRO_PUMP
	db 60, FLAIL
	db 0 ; no more level-up moves

AerodactylEvosAttacks:
	db 0 ; no more evolutions
	db 1, WING_ATTACK
	db 8, AGILITY
	db 15, BITE
	db 20, DRAGON_RAGE
	db 22, SUPERSONIC
	db 29, ANCIENTPOWER
	db 36, SCARY_FACE
	db 43, TAKE_DOWN
	db 47, ROCK_SLIDE
	db 50, HYPER_BEAM
	db 55, EARTHQUAKE
	db 0 ; no more level-up moves

SnorlaxEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, SELFDESTRUCT
	db 8, AMNESIA
	db 15, DEFENSE_CURL
	db 22, BELLY_DRUM
	db 29, HEADBUTT
	db 36, SNORE
	db 36, REST
	db 43, BODY_SLAM
	db 51, ROLLOUT
	db 57, HYPER_BEAM
	db 0 ; no more level-up moves

ArticunoEvosAttacks:
	db 0 ; no more evolutions
	db 1, GUST
	db 1, POWDER_SNOW
	db 1, HEAL_BELL
	db 13, MIST
	db 18, MIND_READER
	db 25, AGILITY
	db 30, ANCIENTPOWER
	db 37, BUBBLEBEAM
	db 49, ICE_BEAM
	db 61, REFLECT
	db 73, SKY_ATTACK
	db 100, BLIZZARD
	db 100, REST
	db 100, SLEEP_TALK
	db 100, TOXIC
	db 0 ; no more level-up moves

ZapdosEvosAttacks:
    db 0 ; no more evolutions
	db 1, PECK
	db 1, THUNDERSHOCK
	db 13, THUNDER_WAVE
	db 18, DETECT
	db 25, AGILITY
	db 30, ANCIENTPOWER
	db 37, THUNDERBOLT
	db 49, DRILL_PECK
	db 61, LIGHT_SCREEN
	db 73, SKY_ATTACK
	db 100, THUNDER
	db 100, REST
	db 100, SLEEP_TALK
	db 100, TOXIC
	db 0 ; no more level-up moves

MoltresEvosAttacks:
    db 0 ; no more evolutions
	db 1, WING_ATTACK
	db 1, EMBER
	db 13, FIRE_SPIN
	db 18, ENDURE
	db 25, AGILITY
	db 30, ANCIENTPOWER
	db 37, SOLARBEAM
	db 49, FLAMETHROWER
	db 61, SAFEGUARD
	db 73, SKY_ATTACK
	db 100, FIRE_BLAST
	db 100, REST
	db 100, SLEEP_TALK
	db 100, TOXIC
	db 0 ; no more level-up moves

DratiniEvosAttacks:
	db EVOLVE_LEVEL, 30, DRAGONAIR
	db 0 ; no more evolutions
	db 1, DRAGON_RAGE
	db 1, LEER
	db 1, WRAP
	db 8, THUNDER_WAVE
	db 15, TWISTER
	db 24, SLAM
	db 29, BUBBLEBEAM
	db 33, FIRE_SPIN
	db 36, AGILITY
	db 43, SAFEGUARD
	db 50, OUTRAGE
	db 57, HYPER_BEAM
	db 0 ; no more level-up moves

DragonairEvosAttacks:
	db EVOLVE_LEVEL, 55, DRAGONITE
	db 0 ; no more evolutions
	db 1, DRAGON_RAGE
	db 1, LEER
	db 1, WRAP
	db 8, THUNDER_WAVE
	db 15, TWISTER
	db 24, SLAM
	db 29, BUBBLEBEAM
	db 36, FIRE_SPIN
	db 43, AGILITY
	db 47, SAFEGUARD
	db 51, HORN_DRILL
	db 56, OUTRAGE
	db 60, HEAL_BELL
	db 65, HYPER_BEAM
	db 70, BARRIER
	db 0 ; no more level-up moves

DragoniteEvosAttacks:
	db 0 ; no more evolutions
	db 1, DRAGON_RAGE
	db 1, WRAP
	db 1, LEER
	db 1, THUNDER_WAVE
	db 15, TWISTER
	db 24, SLAM
	db 29, BUBBLEBEAM
	db 36, FIRE_SPIN
	db 43, AGILITY
	db 47, SAFEGUARD
	db 51, HORN_DRILL
	db 55, WING_ATTACK
	db 61, OUTRAGE
	db 66, ROCK_SLIDE
	db 75, HYPER_BEAM
	db 100, EXTREMESPEED
	db 0 ; no more level-up moves

MewtwoEvosAttacks:
    db 0 ; no more evolutions
    db 1, CONFUSION
    db 1, DISABLE
    db 1, SELFDESTRUCT
    db 11, MIST
    db 22, SWIFT
    db 33, BARRIER
    db 44, FUTURE_SIGHT
    db 55, NIGHT_SHADE
    db 66, PSYBEAM
    db 77, AMNESIA
    db 88, PSYCH_UP
    db 94, SAFEGUARD
    db 100, RECOVER
    db 100, PSYCHIC_M
    db 100, SUBMISSION
    db 100, ICE_BEAM
    db 0 ; no more level-up moves

MewEvosAttacks:
	db 0 ; no more evolutions
	db 1, PAY_DAY
	db 10, MEGA_PUNCH
	db 20, METRONOME
	db 30, PSYCHIC_M
	db 40, BARRIER
	db 50, ANCIENTPOWER
	db 60, AMNESIA
	db 70, BATON_PASS
	db 80, SWORDS_DANCE
	db 90, TRANSFORM
	db 100, EXPLOSION
	db 100, HYPNOSIS
	db 100, THUNDER_WAVE
	db 100, LEECH_LIFE
	db 0 ; no more level-up moves

ChikoritaEvosAttacks:
	db EVOLVE_LEVEL, 16, BAYLEEF
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, GROWL
	db 8, RAZOR_LEAF
	db 12, REFLECT
	db 15, POISONPOWDER
	db 22, SYNTHESIS
	db 29, BODY_SLAM
	db 32, LIGHT_SCREEN
	db 35, DAZZLING_GLEAM
	db 39, SAFEGUARD
	db 43, SOLARBEAM
	db 0 ; no more level-up moves

BayleefEvosAttacks:
	db EVOLVE_LEVEL, 32, MEGANIUM
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, GROWL
	db 1, RAZOR_LEAF
	db 1, REFLECT
	db 15, POISONPOWDER
	db 23, SYNTHESIS
	db 31, BODY_SLAM
	db 35, LIGHT_SCREEN
	db 37, DAZZLING_GLEAM
	db 42, SAFEGUARD
	db 48, SOLARBEAM
	db 0 ; no more level-up moves

MeganiumEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, GROWL
	db 1, RAZOR_LEAF
	db 1, REFLECT
	db 15, POISONPOWDER
	db 23, SYNTHESIS
	db 31, BODY_SLAM
	db 35, SWORDS_DANCE
	db 39, LIGHT_SCREEN
	db 41, DAZZLING_GLEAM
	db 43, GIGA_DRAIN
	db 48, LEECH_SEED
	db 51, SAFEGUARD
	db 54, OUTRAGE
	db 58, SOLARBEAM
	db 0 ; no more level-up moves

CyndaquilEvosAttacks:
	db EVOLVE_LEVEL, 14, QUILAVA
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, LEER
	db 6, SMOKESCREEN
	db 12, EMBER
	db 19, QUICK_ATTACK
	db 23, FLAME_WHEEL
	db 26, SWIFT
	db 29, LOW_KICK
	db 32, SUNNY_DAY
	db 36, FLAMETHROWER
	db 0 ; no more level-up moves

QuilavaEvosAttacks:
	db EVOLVE_LEVEL, 36, TYPHLOSION
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, LEER
	db 1, SMOKESCREEN
	db 12, EMBER
	db 21, QUICK_ATTACK
	db 25, FLAME_WHEEL
	db 28, SWIFT
	db 31, LOW_KICK
	db 34, SUNNY_DAY
	db 38, FLAMETHROWER
	db 0 ; no more level-up moves

TyphlosionEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, LEER
	db 1, SMOKESCREEN
	db 1, EMBER
	db 21, QUICK_ATTACK
	db 25, FLAME_WHEEL
	db 28, SWIFT
	db 31, LOW_KICK
	db 34, SUNNY_DAY
	db 37, FIRE_SPIN
	db 40, FLAMETHROWER
	db 44, SOLARBEAM
	db 0 ; no more level-up moves

TotodileEvosAttacks:
	db EVOLVE_LEVEL, 18, CROCONAW
	db 0 ; no more evolutions
	db 1, SCRATCH
	db 1, LEER
	db 7, RAGE
	db 13, WATER_GUN
	db 17, BITE
	db 21, SCARY_FACE
	db 24, SLASH
	db 28, SCREECH
	db 33, SUBMISSION
	db 40, HYDRO_PUMP
	db 0 ; no more level-up moves

CroconawEvosAttacks:
	db EVOLVE_LEVEL, 30, FERALIGATR
	db 0 ; no more evolutions
	db 1, SCRATCH
	db 1, LEER
	db 1, RAGE
	db 13, WATER_GUN
	db 17, BITE
	db 23, SCARY_FACE
	db 28, SLASH
	db 32, SCREECH
	db 35, SUBMISSION
	db 42, HYDRO_PUMP
	db 0 ; no more level-up moves

FeraligatrEvosAttacks:
	db 0 ; no more evolutions
	db 1, SCRATCH
	db 1, SCREECH
	db 1, RAGE
	db 1, WATER_GUN
	db 17, BITE
	db 23, SCARY_FACE
	db 28, SLASH
	db 35, SUBMISSION
	db 39, ICE_BEAM
	db 43, ROCK_SLIDE
	db 50, HYDRO_PUMP
	db 55, OUTRAGE
	db 0 ; no more level-up moves

SentretEvosAttacks:
	db EVOLVE_LEVEL, 15, FURRET
	db 0 ; no more evolutions
	db 1, TACKLE
	db 4, DEFENSE_CURL
	db 7, QUICK_ATTACK
	db 10, FORESIGHT
	db 14, FURY_SWIPES
	db 17, CURSE
	db 23, SLAM
	db 26, DIZZY_PUNCH
	db 32, AMNESIA
	db 35, AGILITY
	db 40, DOUBLE_EDGE
	db 43, SUPER_FANG
	db 46, BATON_PASS
	db 0 ; no more level-up moves

FurretEvosAttacks:
	db 0 ; no more evolutions
	db 1, SCRATCH
	db 1, DEFENSE_CURL
	db 1, QUICK_ATTACK
	db 10, FORESIGHT
	db 14, FURY_SWIPES
	db 19, CURSE
	db 24, REVERSAL
	db 27, SLAM
	db 30, DIZZY_PUNCH
	db 34, EXTREMESPEED ; New Exclusive Midele Move
	db 37, SWAGGER
	db 39, IRON_TAIL
	db 41, BODY_SLAM
	db 44, AMNESIA
	db 47, AGILITY
	db 49, DOUBLE_EDGE
	db 51, SWORDS_DANCE ; New Exclusive Midele Move
	db 55, SUPER_FANG
	db 58, BATON_PASS
	db 0 ; no more level-up moves

HoothootEvosAttacks:
	db EVOLVE_LEVEL, 20, NOCTOWL
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, GROWL
	db 4, FORESIGHT
	db 7, PECK
	db 9, CONFUSION
	db 11, WING_ATTACK
	db 14, HYPNOSIS
	db 17, REFLECT
	db 19, PSYBEAM
	db 25, BODY_SLAM
	db 33, DREAM_EATER
	db 38, NASTY_PLOT
	db 0 ; no more level-up moves

NoctowlEvosAttacks:
	db 0 ; no more evolutions
	db 1, SKY_ATTACK
	db 1, FUTURE_SIGHT
	db 1, FORESIGHT
	db 1, AGILITY
	db 9, CONFUSION
	db 11, WING_ATTACK
	db 14, HYPNOSIS
	db 17, REFLECT
	db 19, PSYBEAM
	db 21, SCREECH
	db 23, CONFUSE_RAY
	db 25, FAINT_ATTACK
	db 27, RECOVER ; New Exclusive Midele Move
	db 30, BODY_SLAM
	db 33, DREAM_EATER
	db 36, MIRROR_MOVE
	db 39, DAZZLING_GLEAM ; New Exclusive Midele Move
	db 41, PSYCHIC_M
	db 43, NASTY_PLOT
	db 46, MEAN_LOOK
	db 0 ; no more level-up moves

LedybaEvosAttacks:
	db EVOLVE_LEVEL, 18, LEDIAN
	db 0 ; no more evolutions
	db 1, COMET_PUNCH
	db 1, SUPERSONIC
	db 4, REFLECT
	db 7, SWIFT
	db 8, PSYBEAM
	db 10, LIGHT_SCREEN
	db 12, MORNING_SUN
	db 14, SWORDS_DANCE
	db 17, DIZZY_PUNCH
	db 21, AGILITY
	db 23, BARRIER
	db 25, SAFEGUARD
	db 28, ENCORE
	db 30, SUBSTITUTE
	db 33, BATON_PASS
	db 0 ; no more level-up moves

LedianEvosAttacks:
	db 0 ; no more evolutions
	db 1, COMET_PUNCH
	db 1, SUPERSONIC
	db 1, SWAGGER
	db 5, REFLECT
	db 7, SWIFT
	db 8, PSYBEAM
	db 10, LIGHT_SCREEN
	db 12, MORNING_SUN
	db 14, SWORDS_DANCE
	db 17, DIZZY_PUNCH
	db 20, COUNTER
	db 23, LEECH_LIFE ; New Exclusive Midele Move
	db 26, AGILITY
	db 29, GIGA_DRAIN
	db 32, BARRIER
	db 35, SAFEGUARD
	db 38, ENCORE
	db 41, SUBSTITUTE
	db 43, BATON_PASS
	db 0 ; no more level-up moves

SpinarakEvosAttacks:
	db EVOLVE_LEVEL, 22, ARIADOS
	db 0 ; no more evolutions
	db 1, CONSTRICT
	db 1, STRING_SHOT
	db 6, POISON_STING
	db 8, SCARY_FACE
	db 12, FURY_SWIPES
	db 16, TWINEEDLE
	db 19, NIGHT_SHADE
	db 21, PSYBEAM
	db 24, PIN_MISSILE
	db 28, LEECH_LIFE
	db 33, SPIDER_WEB
	db 37, AGILITY
	db 39, SCREECH
	db 41, PSYCHIC_M
	db 44, MEGAHORN
	db 0 ; no more level-up moves

AriadosEvosAttacks:
	db 0 ; no more evolutions
	db 1, CONSTRICT
	db 1, STRING_SHOT
	db 1, SCARY_FACE
	db 6, POISON_STING
	db 12, FURY_SWIPES
	db 16, TWINEEDLE
	db 19, NIGHT_SHADE
	db 21, PSYBEAM
	db 26, PIN_MISSILE
	db 31, LEECH_LIFE
	db 33, SHADOW_BALL ; New Exclusive Midele Move (Ariados of the Anime)
	db 36, SPIDER_WEB
	db 40, AGILITY
	db 43, SCREECH
	db 47, PSYCHIC_M
	db 50, MEGAHORN
	db 0 ; no more level-up moves

CrobatEvosAttacks:
	db 0 ; no more evolutions
	db 1, SCREECH
	db 1, ABSORB
	db 1, SUPERSONIC
	db 1, HYPNOSIS
	db 8, GUST
	db 10, BITE
	db 13, CONFUSE_RAY
	db 18, WING_ATTACK
	db 27, TOXIC
	db 31, LEECH_LIFE
	db 33, SUPER_FANG
	db 36, STEEL_WING
	db 40, MEAN_LOOK
	db 44, HAZE	
	db 48, DOUBLE_EDGE
	db 54, FLAIL
	db 58, SKY_ATTACK
	db 64, NASTY_PLOT
	db 0 ; no more level-up moves

ChinchouEvosAttacks:
	db EVOLVE_LEVEL, 27, LANTURN
	db 0 ; no more evolutions
	db 1, BUBBLE
	db 1, THUNDER_WAVE
	db 5, SUPERSONIC
	db 13, FLAIL
	db 17, WATER_GUN
	db 20, PSYBEAM
	db 25, SPARK
	db 28, BUBBLEBEAM
	db 29, CONFUSE_RAY
	db 33, RAIN_DANCE
	db 36, THUNDERBOLT
	db 38, DAZZLING_GLEAM
	db 41, HEAL_BELL
	db 44, HYDRO_PUMP
	db 48, LIGHT_SCREEN
	db 0 ; no more level-up moves

LanturnEvosAttacks:
	db 0 ; no more evolutions
	db 1, BUBBLE
	db 1, THUNDER_WAVE
	db 1, SUPERSONIC
	db 13, FLAIL
	db 17, WATER_GUN
	db 20, PSYBEAM
	db 25, SPARK
	db 30, BUBBLEBEAM
	db 33, CONFUSE_RAY
	db 37, RAIN_DANCE
	db 40, THUNDERBOLT
	db 43, DAZZLING_GLEAM
	db 45, HEAL_BELL
	db 53, HYDRO_PUMP
	db 57, LIGHT_SCREEN
	db 0 ; no more level-up moves

PichuEvosAttacks:
	db EVOLVE_HAPPINESS, TR_ANYTIME, PIKACHU
	db 0 ; no more evolutions
	db 1, THUNDERSHOCK
	db 1, CHARM
	db 6, TAIL_WHIP
	db 8, THUNDER_WAVE
	db 11, SWEET_KISS
	db 15, SING
	db 30, PETAL_DANCE
	db 50, NASTY_PLOT
	db 0 ; no more level-up moves

CleffaEvosAttacks:
	db EVOLVE_HAPPINESS, TR_ANYTIME, CLEFAIRY
	db 0 ; no more evolutions
	db 1, FAIRY_WIND
	db 1, CHARM
	db 7, ENCORE
	db 9, SWIFT
	db 11, SING
	db 14, SWEET_KISS
	db 25, DAZZLING_GLEAM
	db 30, PETAL_DANCE
	db 0 ; no more level-up moves

IgglybuffEvosAttacks:
	db EVOLVE_HAPPINESS, TR_ANYTIME, JIGGLYPUFF
	db 0 ; no more evolutions
	db 1, SING
	db 1, CHARM
	db 4, DEFENSE_CURL
	db 9, POUND
	db 11, MIMIC
	db 14, SWEET_KISS
	db 25, DAZZLING_GLEAM
	db 30, PETAL_DANCE
	db 38, NASTY_PLOT
	db 0 ; no more level-up moves

TogepiEvosAttacks:
	db EVOLVE_HAPPINESS, TR_ANYTIME, TOGETIC
	db 0 ; no more evolutions
	db 1, FAIRY_WIND
	db 1, CHARM
	db 5, METRONOME
	db 7, HEAL_BELL
	db 10, SWEET_KISS
	db 13, ANCIENTPOWER
	db 17, ENCORE
	db 21, SAFEGUARD
	db 24, DAZZLING_GLEAM
	db 27, DOUBLE_EDGE
	db 32, HEAL_BELL
	db 37, BATON_PASS
	db 41, NASTY_PLOT
	db 0 ; no more level-up moves

TogeticEvosAttacks:
	db 0 ; no more evolutions
	db 1, FAIRY_WIND
	db 1, CHARM
	db 1, HEAL_BELL
	db 8, METRONOME
	db 12, SWEET_KISS
	db 15, ANCIENTPOWER
	db 19, ENCORE
	db 27, DAZZLING_GLEAM
	db 31, BODY_SLAM
	db 34, SAFEGUARD
	db 38, SEISMIC_TOSS
	db 41, BATON_PASS
	db 44, NASTY_PLOT
	db 46, PSYCHIC_M
	db 49, COUNTER
	db 52, THUNDER_WAVE
	db 55, SUBSTITUTE
	db 58, DOUBLE_EDGE
	db 61, REFLECT
	db 64, LIGHT_SCREEN
	db 0 ; no more level-up moves

NatuEvosAttacks:
	db EVOLVE_LEVEL, 25, XATU
	db 0 ; no more evolutions
	db 1, PECK
	db 1, TELEPORT
	db 6, MIMIC
	db 9, TWISTER
	db 12, NIGHT_SHADE
	db 17, FUTURE_SIGHT
	db 24, PSYBEAM
	db 29, CONFUSE_RAY
	db 32, FAINT_ATTACK
	db 36, PSYCHIC_M
	db 39, DAZZLING_GLEAM
	db 41, THUNDER_WAVE
	db 0 ; no more level-up moves

XatuEvosAttacks:
	db 0 ; no more evolutions
	db 1, PECK
	db 1, TELEPORT
	db 1, NIGHT_SHADE
	db 6, MIMIC
	db 9, TWISTER
	db 17, FUTURE_SIGHT
	db 24, PSYBEAM
	db 31, CONFUSE_RAY
	db 34, FAINT_ATTACK
	db 37, DRILL_PECK
	db 39, GIGA_DRAIN
	db 41, PSYCHIC_M
	db 44, DAZZLING_GLEAM
	db 48, PAIN_SPLIT
	db 53, THUNDER_WAVE
	db 0 ; no more level-up moves

MareepEvosAttacks:
	db EVOLVE_LEVEL, 15, FLAAFFY
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, GROWL
	db 6, THUNDERSHOCK
	db 9, HEAL_BELL
	db 11, THUNDER_WAVE
	db 14, COTTON_SPORE
	db 17, CONFUSE_RAY
	db 22, BODY_SLAM
	db 25, LIGHT_SCREEN
	db 29, REFLECT
	db 33, DAZZLING_GLEAM
	db 37, THUNDER
	db 0 ; no more level-up moves

FlaaffyEvosAttacks:
	db EVOLVE_LEVEL, 30, AMPHAROS
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, GROWL
	db 1, THUNDERSHOCK
	db 9, HEAL_BELL
	db 11, THUNDER_WAVE
	db 14, COTTON_SPORE
	db 17, CONFUSE_RAY
	db 25, BODY_SLAM
	db 31, LIGHT_SCREEN
	db 34, REFLECT
	db 38, DAZZLING_GLEAM
	db 45, THUNDER
	db 0 ; no more level-up moves

AmpharosEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, GROWL
	db 1, THUNDERSHOCK
	db 1, THUNDER_WAVE
	db 9, HEAL_BELL
	db 14, COTTON_SPORE
	db 17, CONFUSE_RAY
	db 25, BODY_SLAM
	db 30, THUNDERPUNCH
	db 33, LIGHT_SCREEN
	db 36, REFLECT
	db 41, DAZZLING_GLEAM
	db 46, OUTRAGE
	db 54, THUNDER
	db 0 ; no more level-up moves

BellossomEvosAttacks:
	db 0 ; no more evolutions
	db 1, ABSORB
	db 1, SWEET_SCENT
	db 1, STUN_SPORE
	db 25, CHARM
	db 30, SWORDS_DANCE
	db 35, BATON_PASS
	db 38, DAZZLING_GLEAM
	db 40, LEECH_SEED
	db 45, GIGA_DRAIN
	db 48, PETAL_DANCE
	db 54, SOLARBEAM
	db 0 ; no more level-up moves

MarillEvosAttacks:
	db EVOLVE_LEVEL, 18, AZUMARILL
	db 0 ; no more evolutions
	db 1, CHARM
	db 1, WATER_GUN
	db 4, SING
	db 7, FAIRY_WIND
	db 9, ICY_WIND
	db 11, BUBBLEBEAM
	db 14, ROLLOUT
	db 14, DEFENSE_CURL
	db 17, BODY_SLAM
	db 19, RAIN_DANCE
	db 22, DAZZLING_GLEAM
	db 25, ENCORE
	db 28, DOUBLE_EDGE
	db 34, HYDRO_PUMP
	db 38, SUBSTITUTE
	db 0 ; no more level-up moves

AzumarillEvosAttacks:
	db 0 ; no more evolutions
	db 1, CHARM
	db 1, WATER_GUN
	db 1, SING
	db 1, FAIRY_WIND
	db 9, ICY_WIND
	db 11, BUBBLEBEAM
	db 14, ROLLOUT
	db 14, DEFENSE_CURL
	db 17, BODY_SLAM
	db 18, DYNAMICPUNCH
	db 22, RAIN_DANCE
	db 25, DAZZLING_GLEAM
	db 29, ENCORE
	db 32, BELLY_DRUM
	db 35, PERISH_SONG
	db 39, DOUBLE_EDGE
	db 42, HYDRO_PUMP
	db 47, SUBSTITUTE
	db 0 ; no more level-up moves

SudowoodoEvosAttacks:
	db 0 ; no more evolutions
	db 1, ROCK_THROW
	db 1, MIMIC
	db 10, FLAIL
	db 19, LOW_KICK
	db 23, SPIKES
	db 25, COUNTER
	db 28, ROCK_SLIDE
	db 31, SUBSTITUTE
	db 34, BODY_SLAM
	db 37, CURSE
	db 41, EARTHQUAKE
	db 46, SLAM
	db 51, EXPLOSION
	db 0 ; no more level-up moves

PolitoedEvosAttacks:
	db 0 ; no more evolutions
	db 1, WATER_GUN
	db 1, HYPNOSIS
	db 1, RAIN_DANCE
	db 1, DOUBLESLAP
	db 27, BODY_SLAM
	db 35, PERISH_SONG
	db 42, METRONOME
	db 51, SWAGGER
	db 56, HYDRO_PUMP
	db 62, LOVELY_KISS
	db 0 ; no more level-up moves

HoppipEvosAttacks:
	db EVOLVE_LEVEL, 18, SKIPLOOM
	db 0 ; no more evolutions
	db 1, SPLASH
	db 1, TAIL_WHIP
	db 1, FAIRY_WIND
	db 5, SYNTHESIS
	db 8, CONFUSION
	db 11, POISONPOWDER
	db 12, STUN_SPORE
	db 13, SLEEP_POWDER
	db 15, LEECH_SEED
	db 17, MEGA_DRAIN
	db 21, COTTON_SPORE
	db 23, SUBSTITUTE
	db 26, TOXIC
	db 28, GIGA_DRAIN
	db 31, DAZZLING_GLEAM
	db 33, ENCORE
	db 0 ; no more level-up moves

SkiploomEvosAttacks:
	db EVOLVE_LEVEL, 27, JUMPLUFF
	db 0 ; no more evolutions
	db 1, SPLASH
	db 1, TAIL_WHIP
	db 1, FAIRY_WIND
	db 5, SYNTHESIS
	db 8, CONFUSION
	db 11, POISONPOWDER
	db 12, STUN_SPORE
	db 13, SLEEP_POWDER
	db 15, LEECH_SEED
	db 17, MEGA_DRAIN
	db 23, COTTON_SPORE
	db 25, SUBSTITUTE
	db 28, TOXIC
	db 31, GIGA_DRAIN
	db 33, DAZZLING_GLEAM
	db 36, ENCORE
	db 0 ; no more level-up moves

JumpluffEvosAttacks:
	db 0 ; no more evolutions
	db 1, SPLASH
	db 1, TAIL_WHIP
	db 1, FAIRY_WIND
	db 5, SYNTHESIS
	db 8, CONFUSION
	db 11, POISONPOWDER
	db 12, STUN_SPORE
	db 13, SLEEP_POWDER
	db 15, LEECH_SEED
	db 23, COTTON_SPORE
	db 25, SUBSTITUTE
	db 30, TOXIC
	db 33, GIGA_DRAIN
	db 37, DAZZLING_GLEAM
	db 42, ENCORE
	db 0 ; no more level-up moves

AipomEvosAttacks:
	db 0 ; no more evolutions
	db 1, SCRATCH
	db 1, SAND_ATTACK
	db 4, QUICK_ATTACK
	db 8, CURSE
	db 11, FURY_SWIPES
	db 14, LOW_KICK
	db 17, SWIFT
	db 23, AGILITY
	db 26, SHADOW_BALL
	db 29, BODY_SLAM
	db 30, BATON_PASS
	db 32, THUNDER_WAVE
	db 35, SUBSTITUTE
	db 38, MEGA_KICK
	db 41, NASTY_PLOT
	db 44, DOUBLE_EDGE
	db 0 ; no more level-up moves

SunkernEvosAttacks:
	db EVOLVE_ITEM, SUN_STONE, SUNFLORA
	db 0 ; no more evolutions
	db 1, ABSORB
	db 4, GROWTH
	db 10, MEGA_DRAIN
	db 13, LEECH_SEED
	db 16, RAZOR_LEAF
	db 18, MORNING_SUN
	db 22, GIGA_DRAIN
	db 27, DOUBLE_EDGE
	db 0 ; no more level-up moves

SunfloraEvosAttacks:
	db 0 ; no more evolutions
	db 1, DOUBLE_EDGE
	db 1, SWORDS_DANCE
	db 1, GROWTH
	db 1, MEGA_DRAIN
	db 16, LEECH_SEED
	db 19, MORNING_SUN
	db 21, RAZOR_LEAF
	db 23, ENCORE
	db 25, GIGA_DRAIN
	db 28, SUNNY_DAY
	db 31, DAZZLING_GLEAM
	db 34, SYNTHESIS
	db 37, SOLARBEAM
	db 39, MIMIC
	db 41, PETAL_DANCE
	db 43, LIGHT_SCREEN
	db 0 ; no more level-up moves

YanmaEvosAttacks:
	db 0 ; no more evolutions
	db 1, SUPERSONIC
	db 1, FORESIGHT
	db 1, PURSUIT
	db 6, GUST
	db 9, SWEET_KISS
	db 13, QUICK_ATTACK
	db 15, SWORDS_DANCE
	db 18, SONICBOOM
	db 21, HYPNOSIS
	db 21, DREAM_EATER
	db 24, WING_ATTACK
	db 28, ANCIENTPOWER
	db 29, GIGA_DRAIN
	db 31, DOUBLE_TEAM
	db 32, LEECH_LIFE
	db 34, REVERSAL
	db 34, ENDURE
	db 37, PSYCHIC_M
	db 39, SCREECH
	db 44, DOUBLE_EDGE
	db 47, BATON_PASS
	db 0 ; no more level-up moves

WooperEvosAttacks:
	db EVOLVE_LEVEL, 20, QUAGSIRE
	db 0 ; no more evolutions
	db 1, TAIL_WHIP
	db 1, WATER_GUN
	db 6, RAIN_DANCE
	db 9, DOUBLE_KICK
	db 11, SLAM
	db 15, ICY_WIND
	db 21, AMNESIA
	db 26, RECOVER
	db 31, ROCK_SLIDE
	db 38, EARTHQUAKE
	db 45, HYDRO_PUMP
	db 47, BELLY_DRUM
	db 51, MIST
	db 51, HAZE
	db 0 ; no more level-up moves

QuagsireEvosAttacks:
	db 0 ; no more evolutions
	db 1, TAIL_WHIP
	db 1, WATER_GUN
	db 1, RAIN_DANCE
	db 1, DOUBLE_KICK
	db 11, SLAM
	db 15, ICY_WIND
	db 27, AMNESIA
	db 33, RECOVER
	db 37, ROCK_SLIDE
	db 45, EARTHQUAKE
	db 53, HYDRO_PUMP
	db 56, BELLY_DRUM
	db 59, MIST
	db 59, HAZE
	db 0 ; no more level-up moves

EspeonEvosAttacks:
	db 0 ; no more evolutions
	db 1, SWIFT
	db 1, REFLECT
	db 8, SAND_ATTACK
	db 16, CONFUSION
	db 23, QUICK_ATTACK
	db 26, CONFUSE_RAY
	db 30, BITE
	db 33, PSYBEAM
	db 36, THUNDER_WAVE
	db 39, FUTURE_SIGHT
	db 42, PSYCH_UP
	db 45, LIGHT_SCREEN
	db 47, DAZZLING_GLEAM
	db 49, PSYCHIC_M
	db 52, MORNING_SUN
	db 0 ; no more level-up moves

UmbreonEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, SCREECH
	db 8, SAND_ATTACK
	db 16, PURSUIT
	db 23, QUICK_ATTACK
	db 30, CONFUSE_RAY
	db 36, FAINT_ATTACK
	db 42, MEAN_LOOK
	db 47, CRUNCH
	db 52, MOONLIGHT
	db 0 ; no more level-up moves

MurkrowEvosAttacks:
	db 0 ; no more evolutions
	db 1, PECK
	db 7, PURSUIT
	db 10, HAZE
	db 14, ICY_WIND
	db 17, WING_ATTACK
	db 19, SPIKES ; New Gold Spaceworld Beta Move
	db 21, CONFUSE_RAY
	db 24, FAINT_ATTACK
	db 27, NIGHT_SHADE
	db 29, STEEL_WING
	db 32, DRILL_PECK
	db 36, NASTY_PLOT
	db 39, MEAN_LOOK
	db 42, PERISH_SONG
	db 45, PSYCHIC_M
	db 49, THUNDER_WAVE
	db 0 ; no more level-up moves

SlowkingEvosAttacks:
	db 0 ; no more evolutions
	db 1, CURSE
	db 1, PAY_DAY
	db 1, GROWL
	db 1, WATER_GUN
	db 14, RAIN_DANCE
	db 18, CONFUSION
	db 21, FLAMETHROWER
	db 24, DISABLE
	db 27, BUBBLEBEAM
	db 30, PSYBEAM
	db 33, HEADBUTT
	db 36, ICY_WIND
	db 39, SWAGGER
	db 43, BODY_SLAM
	db 50, PSYCHIC_M
	db 54, LIGHT_SCREEN
	db 0 ; no more level-up moves

MisdreavusEvosAttacks:
	db 0 ; no more evolutions
	db 1, CURSE
	db 1, PSYWAVE
	db 6, SPITE
	db 9, CONFUSION
	db 12, CONFUSE_RAY
	db 15, HYPNOSIS
	db 19, MEAN_LOOK
	db 22, PERISH_SONG
	db 25, PSYBEAM
	db 28, HEAL_BELL
	db 31, ICY_WIND
	db 34, NIGHT_SHADE
	db 37, DAZZLING_GLEAM
	db 40, PSYCHIC_M
	db 44, PAIN_SPLIT
	db 48, THUNDER_WAVE
	db 54, NASTY_PLOT
	db 0 ; no more level-up moves

UnownEvosAttacks:
	db 0 ; no more evolutions
	db 1, HIDDEN_POWER
	db 0 ; no more level-up moves

WobbuffetEvosAttacks:
	db 0 ; no more evolutions
	db 1, SAFEGUARD
	db 1, COUNTER
	db 1, MIRROR_COAT
	db 1, DESTINY_BOND
    db 40, BIDE ; New Exclusive Midele Move (Wobbuffet of the Anime)
	db 43, MIMIC
	db 46, ENCORE
	db 0 ; no more level-up moves

GirafarigEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, REFLECT
	db 8, CONFUSION
	db 16, STOMP
	db 23, AGILITY
	db 27, BATON_PASS
	db 29, PSYBEAM
	db 32, DAZZLING_GLEAM
	db 35, BODY_SLAM
	db 39, CRUNCH
	db 42, CONFUSE_RAY
	db 45, PSYCHIC_M
	db 48, MEAN_LOOK
	db 53, DOUBLE_EDGE
	db 56, MIRROR_COAT
	db 59, THUNDER_WAVE
	db 64, NASTY_PLOT
	db 0 ; no more level-up moves

PinecoEvosAttacks:
	db EVOLVE_LEVEL, 31, FORRETRESS
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, PROTECT
	db 7, RAPID_SPIN
	db 10, SPIKES
	db 13, PIN_MISSILE
	db 15, SUBSTITUTE
	db 18, SELFDESTRUCT
	db 25, TAKE_DOWN
	db 29, BIDE
	db 36, EXPLOSION
	db 40, DOUBLE_EDGE
	db 0 ; no more level-up moves

ForretressEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, PROTECT
	db 1, RAPID_SPIN
	db 1, SPIKES
	db 13, PIN_MISSILE
	db 15, SUBSTITUTE
	db 18, SELFDESTRUCT
	db 25, TAKE_DOWN
	db 29, BIDE
	db 33, THUNDER_WAVE
	db 39, EXPLOSION
	db 42, ROCK_SLIDE
	db 48, EARTHQUAKE
	db 54, DOUBLE_EDGE
	db 0 ; no more level-up moves

DunsparceEvosAttacks:
	db 0 ; no more evolutions
	db 1, PURSUIT
	db 1, DEFENSE_CURL
	db 5, RAGE
	db 8, SPITE
	db 12, GLARE
	db 15, ANCIENTPOWER
	db 18, FURY_ATTACK
	db 20, SCREECH
	db 23, BODY_SLAM
	db 26, ROCK_SLIDE
	db 30, AGILITY
	db 34, RECOVER  ; New Exclusive Midele Move
	db 38, THUNDER_WAVE
	db 43, DOUBLE_EDGE
	db 48, FLAIL
	db 55, HORN_DRILL
	db 0 ; no more level-up moves

GligarEvosAttacks:
	db 0 ; no more evolutions
	db 1, POISON_STING
	db 1, SANDSTORM
	db 6, SAND_ATTACK
	db 13, HARDEN
	db 20, QUICK_ATTACK
	db 27, SPIKES
	db 33, SLASH
	db 38, WING_ATTACK
	db 41, SCREECH
	db 44, ROCK_SLIDE
	db 46, EARTHQUAKE
	db 49, AGILITY
	db 49, SWORDS_DANCE
	db 52, GUILLOTINE
	db 0 ; no more level-up moves

SteelixEvosAttacks:
	db 0 ; no more evolutions
	db 1, CRUNCH
	db 1, HARDEN
	db 1, BIND
	db 1, ROCK_THROW
	db 18, SHARPEN
	db 23, SCREECH
	db 27, RAGE
	db 33, ROCK_SLIDE
	db 36, SANDSTORM
	db 40, SLAM
	db 45, BODY_SLAM
	db 49, IRON_TAIL
	db 54, EXPLOSION
	db 0 ; no more level-up moves

SnubbullEvosAttacks:
	db EVOLVE_LEVEL, 23, GRANBULL
	db 0 ; no more evolutions
	db 1, BITE
	db 1, TAIL_WHIP
	db 4, SCARY_FACE
	db 8, CHARM
	db 13, TACKLE
	db 17, CURSE
	db 22, LOW_KICK
	db 25, TAKE_DOWN
	db 28, ROAR
	db 31, DAZZLING_GLEAM
	db 34, RAGE
	db 38, BODY_SLAM
	db 0 ; no more level-up moves

GranbullEvosAttacks:
	db 0 ; no more evolutions
	db 1, BITE
	db 1, TAIL_WHIP
	db 1, SCARY_FACE
	db 1, CHARM
	db 13, TACKLE
	db 17, CURSE
	db 22, LOW_KICK
	db 28, TAKE_DOWN
	db 30, ROAR
	db 33, DAZZLING_GLEAM
	db 36, ROCK_SLIDE
	db 38, RAGE
	db 41, CROSS_CHOP ; New Exclusive Midele Move
	db 43, BODY_SLAM
	db 47, THUNDER_WAVE
	db 55, HEAL_BELL
	db 59, DOUBLE_EDGE
	db 0 ; no more level-up moves

QwilfishEvosAttacks:
	db 0 ; no more evolutions
	db 1, HARDEN
	db 1, TACKLE
	db 1, POISON_STING
	db 10, MINIMIZE
	db 15, WATER_GUN
	db 19, SPIKES
	db 21, PIN_MISSILE
	db 24, SHADOW_BALL
	db 28, SWORDS_DANCE
	db 33, SELFDESTRUCT
	db 37, TAKE_DOWN
	db 39, THUNDER_WAVE
	db 42, DESTINY_BOND
	db 46, HYDRO_PUMP
	db 51, PAIN_SPLIT
	db 56, EXPLOSION
	db 0 ; no more level-up moves

ScizorEvosAttacks:
	db 0 ; no more evolutions
	db 1, QUICK_ATTACK
	db 1, LEER
	db 6, FOCUS_ENERGY
	db 18, FALSE_SWIPE
	db 24, AGILITY
	db 30, STEEL_WING
	db 36, SLASH
	db 41, SWORDS_DANCE
	db 45, LEECH_LIFE ; New Exclusive Midele Move
	db 0 ; no more level-up moves

ShuckleEvosAttacks:
	db 0 ; no more evolutions
	db 1, CONSTRICT
	db 1, WITHDRAW
	db 6, STRING_SHOT
	db 9, WRAP
	db 14, ENCORE
	db 18, ANCIENTPOWER
	db 23, SAFEGUARD
	db 25, TOXIC
	db 28, BIDE
	db 30, SANDSTORM
	db 33, ROCK_SLIDE
	db 35, BODY_SLAM
	db 37, REST
	db 40, SUBSTITUTE
	db 44, MIMIC
	db 0 ; no more level-up moves

HeracrossEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, LEER
	db 6, FURY_ATTACK
	db 12, ENDURE
	db 17, HORN_ATTACK
	db 20, LOW_KICK
	db 24, COUNTER
	db 27, SLASH
	db 30, ROCK_SLIDE
	db 33, PIN_MISSILE
	db 35, TAKE_DOWN
	db 39, SPIKES
	db 44, REVERSAL
	db 47, SWORDS_DANCE
	db 54, MEGAHORN
	db 0 ; no more level-up moves

SneaselEvosAttacks:
	db 0 ; no more evolutions
	db 1, FURY_SWIPES
	db 1, SCREECH
	db 6, QUICK_ATTACK
	db 10, METAL_CLAW
	db 14, SPITE
	db 17, FAINT_ATTACK
	db 23, MOONLIGHT
	db 27, LOW_KICK
	db 33, SLASH
	db 36, AGILITY
	db 39, ICE_BEAM
	db 41, NASTY_PLOT
	db 46, REVERSAL
	db 51, SWORDS_DANCE
	db 54, BEAT_UP
	db 0 ; no more level-up moves

TeddiursaEvosAttacks:
	db EVOLVE_LEVEL, 30, URSARING
	db 0 ; no more evolutions
	db 1, SCRATCH
	db 1, LEER
	db 6, LICK
	db 9, FURY_SWIPES
	db 11, METRONOME
	db 14, LOW_KICK
	db 17, METAL_CLAW
	db 22, REST
	db 22, SNORE
	db 25, SLASH
	db 33, SWORDS_DANCE
	db 40, CROSS_CHOP
	db 45, THRASH
	db 0 ; no more level-up moves

UrsaringEvosAttacks:
	db 0 ; no more evolutions
	db 1, SCRATCH
	db 1, LEER
	db 1, LICK
	db 1, FURY_SWIPES
	db 11, METRONOME
	db 14, LOW_KICK
	db 17, METAL_CLAW
	db 22, REST
	db 22, SNORE
	db 25, SLASH
	db 31, SCARY_FACE
	db 37, SWORDS_DANCE
	db 41, BODY_SLAM
	db 44, CROSS_CHOP
	db 48, THRASH
	db 56, BELLY_DRUM
	db 0 ; no more level-up moves

SlugmaEvosAttacks:
	db EVOLVE_LEVEL, 38, MAGCARGO
	db 0 ; no more evolutions
	db 1, SMOG
	db 1, FIRE_SPIN
	db 7, EMBER
	db 9, SMOKESCREEN
	db 12, ROCK_THROW
	db 15, CURSE
	db 18, AMNESIA
	db 21, FLAMETHROWER
	db 24, RECOVER
	db 27, SUNNY_DAY
	db 29, ROCK_SLIDE
	db 32, BODY_SLAM
	db 35, ACID_ARMOR
	db 0 ; no more level-up moves

MagcargoEvosAttacks:
	db 0 ; no more evolutions
	db 1, SMOG
	db 1, FIRE_SPIN
	db 1, EMBER
	db 1, ROCK_THROW
	db 9, SMOKESCREEN
	db 15, CURSE
	db 18, AMNESIA
	db 21, FLAMETHROWER
	db 24, RECOVER
	db 27, SUNNY_DAY
	db 29, ROCK_SLIDE
	db 32, BODY_SLAM
	db 39, SOLARBEAM
	db 41, ACID_ARMOR
	db 43, REFLECT
	db 45, LIGHT_SCREEN
	db 0 ; no more level-up moves

SwinubEvosAttacks:
	db EVOLVE_LEVEL, 33, PILOSWINE
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, POWDER_SNOW
	db 10, ICY_WIND
	db 19, ENDURE
	db 24, CURSE
	db 28, TAKE_DOWN
	db 34, MIST
	db 37, EARTHQUAKE
	db 40, BLIZZARD
	db 43, AMNESIA
	db 0 ; no more level-up moves

PiloswineEvosAttacks:
	db 0 ; no more evolutions
	db 1, FURY_ATTACK
	db 1, BLIZZARD
	db 1, REVERSAL
	db 1, ICY_WIND
	db 19, ENDURE
	db 24, CURSE
	db 28, TAKE_DOWN
	db 33, SCARY_FACE
	db 38, ROCK_SLIDE
	db 42, MIST
	db 45, EARTHQUAKE
	db 48, AMNESIA
	db 52, THRASH
	db 55, LIGHT_SCREEN
	db 58, REFLECT
	db 0 ; no more level-up moves

CorsolaEvosAttacks:
	db 0 ; no more evolutions
	db 1, ANCIENTPOWER
	db 1, CURSE
	db 7, CONFUSE_RAY
	db 10, EXPLOSION
	db 13, BUBBLE
	db 19, SPIKE_CANNON
	db 23, ICY_WIND
	db 26, BUBBLEBEAM
	db 29, RECOVER
	db 31, TOXIC
	db 34, GIGA_DRAIN
	db 37, MIRROR_COAT
	db 39, PSYCHIC_M
	db 41, REFLECT
	db 41, LIGHT_SCREEN
	db 43, ROCK_SLIDE
	db 48, HYDRO_PUMP
	db 52, BARRIER
	db 0 ; no more level-up moves

RemoraidEvosAttacks:
	db EVOLVE_LEVEL, 25, OCTILLERY
	db 0 ; no more evolutions
	db 1, WATER_GUN
	db 11, LOCK_ON
	db 22, PSYBEAM
	db 22, AURORA_BEAM
	db 22, BUBBLEBEAM
	db 27, FOCUS_ENERGY
	db 34, HYPER_BEAM
	db 0 ; no more level-up moves

OctilleryEvosAttacks:
	db 0 ; no more evolutions
	db 1, WATER_GUN
	db 11, CONSTRICT
	db 22, PSYBEAM
	db 22, AURORA_BEAM
	db 22, BUBBLEBEAM
	db 25, OCTAZOOKA
	db 28, THUNDER_WAVE
	db 32, FOCUS_ENERGY
	db 35, PSYCHIC_M
	db 39, ICE_BEAM
	db 42, FLAMETHROWER
	db 46, HYPER_BEAM
	db 0 ; no more level-up moves

DelibirdEvosAttacks:
	db 0 ; no more evolutions
	db 1, BATON_PASS
	db 1, MIMIC
	db 1, PAY_DAY
	db 1, PRESENT
	db 25, DRILL_PECK
	db 30, SPIKES
	db 35, COUNTER
	db 39, DESTINY_BOND
	db 41, BODY_SLAM
	db 43, ICE_BEAM
	db 46, ENCORE ; New Gold Spaceworld Beta Move
	db 49, AGILITY
	db 51, REVERSAL
	db 53, SKY_ATTACK
	db 53, BLIZZARD
	db 56, SWAGGER
	db 59, SUBSTITUTE
	db 63, SEISMIC_TOSS
	db 0 ; no more level-up moves

MantineEvosAttacks:
	db 0 ; no more evolutions
	db 1, TAKE_DOWN
	db 1, BUBBLE
	db 1, SUPERSONIC
	db 10, WING_ATTACK
	db 18, BUBBLEBEAM
	db 25, PSYBEAM
	db 32, AGILITY
	db 36, EARTHQUAKE
	db 40, BODY_SLAM
	db 44, HYDRO_PUMP
	db 49, CONFUSE_RAY
	db 0 ; no more level-up moves

SkarmoryEvosAttacks:
	db 0 ; no more evolutions
	db 1, LEER
	db 1, PECK
	db 9, ROAR
	db 13, SAND_ATTACK
	db 19, SWIFT
	db 25, AGILITY
	db 28, DRILL_PECK
	db 31, SPIKES
	db 36, FURY_ATTACK
	db 41, ROCK_SLIDE
	db 45, STEEL_WING
	db 53, SWORDS_DANCE
	db 0 ; no more level-up moves

HoundourEvosAttacks:
	db EVOLVE_LEVEL, 24, HOUNDOOM
	db 0 ; no more evolutions
	db 1, LEER
	db 1, EMBER
	db 7, SMOG
	db 13, BITE
	db 20, ROAR
	db 23, FIRE_SPIN
	db 27, FAINT_ATTACK
	db 30, SUNNY_DAY
	db 35, FLAMETHROWER
	db 39, CRUNCH
	db 55, NASTY_PLOT
	db 0 ; no more level-up moves

HoundoomEvosAttacks:
	db 0 ; no more evolutions
	db 1, LEER
	db 1, EMBER
	db 7, SMOG
	db 13, BITE
	db 20, ROAR
	db 23, FIRE_SPIN
	db 30, FAINT_ATTACK
	db 34, SUNNY_DAY
	db 41, FLAMETHROWER
	db 46, CRUNCH
	db 51, SOLARBEAM
	db 54, FIRE_BLAST
	db 59, DESTINY_BOND
	db 64, PAIN_SPLIT
	db 68, NASTY_PLOT
	db 0 ; no more level-up moves

KingdraEvosAttacks:
	db 0 ; no more evolutions
	db 1, BUBBLE
	db 1, SMOKESCREEN
	db 1, LEER
	db 1, WATER_GUN
	db 29, TWISTER
	db 38, BUBBLEBEAM
	db 42, AGILITY
	db 46, HYDRO_PUMP
	db 54, OUTRAGE
	db 0 ; no more level-up moves

PhanpyEvosAttacks:
	db EVOLVE_LEVEL, 25, DONPHAN
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, GROWL
	db 4, WATER_GUN
	db 7, ABSORB
	db 9, DEFENSE_CURL
	db 12, FLAIL
	db 16, ROLLOUT
	db 20, TAKE_DOWN
	db 24, MAGNITUDE
	db 27, BODY_SLAM
	db 32, ENCORE
	db 37, DOUBLE_EDGE
	db 0 ; no more level-up moves

DonphanEvosAttacks:
	db 0 ; no more evolutions
	db 1, HORN_ATTACK
	db 1, GROWL
	db 6, DEFENSE_CURL
	db 10, FLAIL
	db 15, FURY_ATTACK
	db 20, TAKE_DOWN
	db 24, MAGNITUDE
	db 32, BODY_SLAM
	db 37, RAPID_SPIN
	db 40, ENCORE
	db 43, DOUBLE_EDGE
	db 46, EARTHQUAKE
	db 0 ; no more level-up moves

Porygon2EvosAttacks:
	db 0 ; no more evolutions
	db 1, TAKE_DOWN
	db 1, SUBSTITUTE
	db 1, THUNDERSHOCK
	db 1, AGILITY
	db 16, PSYBEAM
	db 19, CONVERSION
	db 19, CONVERSION2
	db 22, RECOVER
	db 25, SPARK
	db 27, SHARPEN
	db 30, TRI_ATTACK
	db 35, REFLECT
	db 39, DOUBLE_EDGE
	db 44, PSYCHIC_M
	db 48, ZAP_CANNON
	db 48, LOCK_ON
	db 54, BARRIER
	db 57, THUNDER_WAVE
	db 0 ; no more level-up moves

StantlerEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, LEER
	db 1, SUBSTITUTE
	db 8, CONFUSE_RAY
	db 10, HYPNOSIS
	db 15, DOUBLE_KICK
	db 19, PSYBEAM
	db 22, STOMP
	db 24, BITE
	db 27, THUNDERBOLT
	db 30, TAKE_DOWN
	db 34, JUMP_KICK
	db 37, THUNDER_WAVE
	db 40, MEGAHORN
	db 44, BODY_SLAM
	db 47, PSYCHIC_M
	db 51, THRASH
	db 0 ; no more level-up moves

SmeargleEvosAttacks:
	db 0 ; no more evolutions
	db 1, SKETCH
	db 11, SKETCH
	db 21, SKETCH
	db 31, SKETCH
	db 41, SKETCH
	db 51, SKETCH
	db 61, SKETCH
	db 71, SKETCH
	db 81, SKETCH
	db 91, SKETCH
	db 0 ; no more level-up moves

TyrogueEvosAttacks:
	db EVOLVE_STAT, 20, ATK_GT_DEF, HITMONLEE
	db EVOLVE_STAT, 20, ATK_LT_DEF, HITMONCHAN
	db EVOLVE_STAT, 20, ATK_EQ_DEF, HITMONTOP
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, FOCUS_ENERGY
	db 6, FORESIGHT
	db 9, RAGE
	db 13, MACH_PUNCH
	db 17, LOW_KICK
	db 23, BODY_SLAM
	db 27, SEISMIC_TOSS
	db 30, ROCK_SLIDE
	db 33, MEGA_PUNCH
	db 37, SUBSTITUTE
	db 42, DOUBLE_EDGE
	db 45, MEGA_KICK
	db 0 ; no more level-up moves

HitmontopEvosAttacks:
	db 0 ; no more evolutions
	db 1, TRIPLE_KICK
	db 1, FOCUS_ENERGY
	db 21, RAPID_SPIN
	db 24, QUICK_ATTACK
	db 27, ROCK_SLIDE
	db 31, COUNTER
	db 33, ROLLING_KICK
	db 37, AGILITY
	db 40, SEISMIC_TOSS
	db 43, DETECT
	db 48, HI_JUMP_KICK
	db 0 ; no more level-up moves

SmoochumEvosAttacks:
	db EVOLVE_LEVEL, 30, JYNX
	db 0 ; no more evolutions
	db 1, POUND
	db 1, LICK
	db 7, METRONOME
	db 10, POWDER_SNOW
	db 15, SWEET_KISS
	db 19, CONFUSION
	db 24, SING
	db 31, MEAN_LOOK
	db 37, PSYCHIC_M
	db 41, PETAL_DANCE
	db 45, PERISH_SONG
	db 49, BLIZZARD
	db 0 ; no more level-up moves

ElekidEvosAttacks:
	db EVOLVE_LEVEL, 30, ELECTABUZZ
	db 0 ; no more evolutions
	db 1, QUICK_ATTACK
	db 1, LEER
	db 9, THUNDERPUNCH
	db 17, LIGHT_SCREEN
	db 25, SWIFT
	db 33, SCREECH
	db 41, THUNDERBOLT
	db 49, THUNDER
	db 0 ; no more level-up moves

MagbyEvosAttacks:
	db EVOLVE_LEVEL, 30, MAGMAR
	db 0 ; no more evolutions
	db 1, EMBER
	db 7, LEER
	db 10, SMOG
	db 15, POISON_GAS
	db 19, FIRE_PUNCH
	db 25, SMOKESCREEN
	db 31, SUNNY_DAY
	db 37, FLAMETHROWER
	db 43, CONFUSE_RAY
	db 49, FIRE_BLAST
	db 0 ; no more level-up moves

MiltankEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 4, GROWL
	db 8, DEFENSE_CURL
	db 13, ROLLOUT
	db 17, STOMP
	db 21, MILK_DRINK
	db 26, BIDE
	db 34, ROCK_SLIDE
	db 43, BODY_SLAM
	db 53, HEAL_BELL
	db 57, DOUBLE_EDGE
	db 0 ; no more level-up moves

BlisseyEvosAttacks:
	db 0 ; no more evolutions
	db 1, FAIRY_WIND
	db 4, GROWL
	db 7, TAIL_WHIP
	db 10, SOFTBOILED
	db 13, DOUBLESLAP
	db 15, METRONOME
	db 18, MINIMIZE
	db 20, BUBBLEBEAM
	db 23, SING
	db 28, EGG_BOMB
	db 31, SEISMIC_TOSS
	db 33, DEFENSE_CURL
	db 40, LIGHT_SCREEN
	db 47, DOUBLE_EDGE
	db 55, DAZZLING_GLEAM
	db 0 ; no more level-up moves

RaikouEvosAttacks:
	db 0 ; no more evolutions
	db 1, BITE
	db 1, LEER
	db 11, THUNDERSHOCK
	db 21, QUICK_ATTACK
	db 25, LIGHT_SCREEN
	db 31, SPARK
	db 35, THUNDER_WAVE
	db 41, REFLECT
	db 51, ROAR
	db 61, CRUNCH
	db 71, THUNDER
	db 76, EXTREMESPEED
	db 0 ; no more level-up moves

EnteiEvosAttacks:
	db 0 ; no more evolutions
	db 1, BITE
	db 1, LEER
	db 11, EMBER
	db 21, FIRE_SPIN
	db 25, REFLECT
	db 31, STOMP
	db 35, SCARY_FACE
	db 41, SACRED_FIRE
	db 45, BODY_SLAM
	db 51, ROAR
	db 55, CRUNCH
	db 61, SWAGGER
	db 65, REVERSAL
	db 71, FIRE_BLAST
	db 76, EXTREMESPEED
	db 0 ; no more level-up moves

SuicuneEvosAttacks:
	db 0 ; no more evolutions
	db 1, BITE
	db 1, LEER
	db 11, BUBBLEBEAM
	db 21, RAIN_DANCE
	db 25, REFLECT
	db 31, GUST
	db 41, AURORA_BEAM
	db 51, MIST
	db 55, CRUNCH
	db 61, MIRROR_COAT
	db 71, HYDRO_PUMP
	db 76, EXTREMESPEED
	db 0 ; no more level-up moves

LarvitarEvosAttacks:
	db EVOLVE_LEVEL, 20, PUPITAR
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, LEER
	db 7, PURSUIT
	db 9, SANDSTORM
	db 12, BITE
	db 15, ROCK_THROW
	db 21, STOMP
	db 24, DIG
	db 28, SCARY_FACE
	db 32, ROCK_SLIDE
	db 36, CRUNCH
	db 40, THRASH
	db 45, HYPER_BEAM
	db 49, SCREECH
	db 56, EARTHQUAKE
	db 0 ; no more level-up moves

PupitarEvosAttacks:
	db EVOLVE_LEVEL, 40, TYRANITAR
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, LEER
	db 1, PURSUIT
	db 1, SANDSTORM
	db 12, BITE
	db 15, ROCK_THROW
	db 23, STOMP
	db 27, DIG
	db 31, SCARY_FACE
	db 35, ROCK_SLIDE
	db 39, CRUNCH
	db 45, THRASH
	db 53, HYPER_BEAM
	db 56, SCREECH
	db 59, EARTHQUAKE
	db 0 ; no more level-up moves

TyranitarEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, LEER
	db 1, PURSUIT
	db 1, SANDSTORM
	db 12, BITE
	db 15, ROCK_THROW
	db 23, STOMP
	db 27, DIG
	db 31, SCARY_FACE
	db 35, ROCK_SLIDE
	db 39, CRUNCH
	db 47, THRASH
	db 56, HYPER_BEAM
	db 59, SCREECH
	db 63, MEGA_KICK
	db 75, EARTHQUAKE
	db 0 ; no more level-up moves

LugiaEvosAttacks:
    db 0 ; no more evolutions
    db 1, AEROBLAST
    db 11, SAFEGUARD
    db 22, GUST
    db 33, RECOVER
    db 44, HYDRO_PUMP
    db 55, RAIN_DANCE
    db 66, SWIFT
    db 77, WHIRLWIND
    db 88, ANCIENTPOWER
    db 99, FUTURE_SIGHT
    db 100, ICE_BEAM
    db 100, SKY_ATTACK
    db 100, HYPER_BEAM
    db 100, PSYCHIC_M
	db 0 ; no more level-up moves

HoOhEvosAttacks:
	db 0 ; no more evolutions
	db 1, SACRED_FIRE
	db 11, SAFEGUARD
	db 22, GUST
	db 33, RECOVER
	db 44, FIRE_BLAST
	db 55, SUNNY_DAY
	db 66, SWIFT
	db 77, WHIRLWIND
	db 88, ANCIENTPOWER
	db 99, FUTURE_SIGHT
	db 100, EARTHQUAKE
	db 100, SKY_ATTACK
	db 100, HYPER_BEAM
	db 100, GIGA_DRAIN
	db 0 ; no more level-up moves

CelebiEvosAttacks:
	db 0 ; no more evolutions
	db 1, LEECH_SEED
	db 1, CONFUSION
	db 1, RECOVER
	db 1, HEAL_BELL
	db 10, SAFEGUARD
	db 20, ANCIENTPOWER
	db 30, FUTURE_SIGHT
	db 35, BATON_PASS
	db 40, GIGA_DRAIN
	db 45, PSYCHIC_M
	db 50, METRONOME
	db 55, PERISH_SONG
	db 60, DAZZLING_GLEAM
	db 0 ; no more level-up moves

MicomonEvosAttacks: ; NOROWARA
	db 0 ; no more evolutions
	db 1, LICK
	db 4, SCREECH
	db 7, BIDE
	db 10, DISABLE
	db 13, CONFUSE_RAY
	db 18, BITE
	db 21, HYPNOSIS
	db 24, NIGHT_SHADE
	db 27, CURSE
	db 30, SWORDS_DANCE
	db 33, FAINT_ATTACK
	db 35, GLARE
	db 38, SHADOW_BALL
	db 41, LEECH_LIFE
	db 44, DESTINY_BOND
	db 47, FUTURE_SIGHT
	db 50, PAIN_SPLIT
	db 53, MEAN_LOOK
	db 58, OUTRAGE
	db 61, SPIKES
	db 0

BombseekerEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, TAIL_WHIP
	db 5, WATER_GUN
	db 5, EMBER
	db 12, SMOG
	db 15, FIRE_SPIN
	db 19, FLAME_WHEEL
	db 19, BUBBLEBEAM
	db 26, TAKE_DOWN
	db 31, AURORA_BEAM
	db 38, SKULL_BASH
	db 43, RECOVER
	db 46, MIRROR_COAT
	db 54, FIRE_BLAST
	db 54, HYDRO_PUMP
	db 0
	
