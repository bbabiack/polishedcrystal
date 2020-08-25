	db 106, 110,  90, 130, 154,  90 ; 680 BST
	;   hp  atk  def  spd  sat  sdf

if DEF(FAITHFUL)
	db PSYCHIC, PSYCHIC
else
	db PSYCHIC, STEEL
endc
	db 3 ; catch rate
	db 220 ; base exp
	db ALWAYS_ITEM_2 ; item 1
	db PETAYA_BERRY ; item 2
	dn GENDERLESS, 15 ; gender, step cycles to hatch
	INCBIN "gfx/pokemon/mewtwo_armored/front.dimensions"
	abilities_for MEWTWO, PRESSURE, INSOMNIA, UNNERVE
	; assumes identical abilities to non-armored
	db SLOW ; growth rate
	dn NO_EGGS, NO_EGGS ; egg groups

	ev_yield   0,   0,   0,   0,   3,   0
	;         hp, atk, def, spd, sat, sdf

	; tmhm
	tmhm DYNAMICPUNCH, CURSE, CALM_MIND, TOXIC, HAIL, BULK_UP, HIDDEN_POWER, SUNNY_DAY, ICE_BEAM, BLIZZARD, HYPER_BEAM, LIGHT_SCREEN, PROTECT, RAIN_DANCE, SAFEGUARD, BULLDOZE, SOLAR_BEAM, IRON_TAIL, THUNDERBOLT, THUNDER, EARTHQUAKE, RETURN, PSYCHIC, SHADOW_BALL, ROCK_SMASH, DOUBLE_TEAM, REFLECT, FLAMETHROWER, SANDSTORM, FIRE_BLAST, SWIFT, AERIAL_ACE, SUBSTITUTE, FACADE, REST, ROCK_SLIDE, FOCUS_BLAST, ENERGY_BALL, DRAIN_PUNCH, WILL_O_WISP, WATER_PULSE, POISON_JAB, AVALANCHE, GIGA_IMPACT, FLASH, STONE_EDGE, THUNDER_WAVE, STRENGTH, AQUA_TAIL, BODY_SLAM, COUNTER, DOUBLE_EDGE, DREAM_EATER, ENDURE, FIRE_PUNCH, HEADBUTT, ICE_PUNCH, ICY_WIND, PAY_DAY, SEISMIC_TOSS, SKILL_SWAP, SLEEP_TALK, SWAGGER, THUNDERPUNCH, TRICK, ZAP_CANNON, ZEN_HEADBUTT
	; end
