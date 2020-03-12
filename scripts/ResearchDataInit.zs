#priority 10
/*
    File: ResearchDataInit.zs
    Author: Kel

    This file prepares the global research data items for use in the recipe adding scripts
    As such, this file should have high priority when loading

*/

/* Lore lines begin with: 

§r§7Tier: 
§r§7Type: 
§r§7Quality:

*/

/* Color code list:

Dark Red (dark_red)	        §4	\u00A74	AA0000
Red (red)	                §c	\u00A7c	FF5555
Gold (gold)	                §6	\u00A76	FFAA00
Yellow (yellow)	            §e	\u00A7e	FFFF55
Dark Green (dark_green)	    §2	\u00A72	00AA00
Green (green)	            §a	\u00A7a	55FF55
Aqua (aqua)	                §b	\u00A7b	55FFFF
Dark Aqua (dark_aqua)	    §3	\u00A73	00AAAA
Dark Blue (dark_blue)	    §1	\u00A71	0000AA
Blue (blue)	                §9	\u00A79	5555FF
Light Purple (light_purple)	§d	\u00A7d	FF55FF
Dark Purple (dark_purple)	§5	\u00A75	AA00AA
White (white)	            §f	\u00A7f	FFFFFF
Gray (gray)	                §7	\u00A77	AAAAAA
Dark Gray (dark_gray)	    §8	\u00A78	555555
Black (black)	            §0	\u00A70	000000  Way too difficult to read, don't use

Format Codes:
Bold	                    §l	\u00A7l
Strikethrough	            §m	\u00A7m
Underline	                §n	\u00A7n
Italic	                    §o	\u00A7o
Reset the default color	    §r	\u00A7r

*/


// Create the research data items for the following LV components
// Qualitys are: POOR FAIR GOOD GREAT PERFECT
// Colors:       §8   §f   §6   §b    §a

// Tiers are: LV MV HV EV IV LuV ZPM UV
// Colors:    §7 §6 §e §8 §f §d  §b  §a

/* Types I know I want to include:
    Components - MOTOR, PISTON, ARM, PUMP, CONVEYOR, EMITTER, SENSOR, FIELD_GEN
    TODO: Decide chipset line
    TODO: Research cables per tier?
    TODO: Multiblock list
    TODO: Magic list?
    TODO: Nuclearcraft fuels list?

*/
