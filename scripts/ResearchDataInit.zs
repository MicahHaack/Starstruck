#priority 10
/*
    File: ResearchDataInit.zs
    Author: Kel

    This file prepares the global research data items for use in the recipe adding scripts
    As such, this file should have high priority when loading

*/

// Imports
import crafttweaker.item.IItemStack;

/* Lore lines begin with: 

§r§7Tier: 
§r§7Type: 
§r§7Quality:

*/

val TIER    = "§r§7Tier: ";
val TYPE    = "§r§7Type: ";
val QUALITY = "§r§7Quality: ";

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

val POOR    = "§8Poor";
val FAIR    = "§fFair";
val GOOD    = "§6Good";
val GREAT   = "§bGreat";
val PERFECT = "§aPerfect";

val qualitys = {
    "POOR": POOR, 
    "FAIR": FAIR, 
    "GOOD": GOOD, 
    "GREAT": GREAT, 
    "PERFECT": PERFECT
    } as string[string];

// Tiers are: LV MV HV EV IV LUV ZPM UV
// Colors:    §7 §6 §e §8 §f §d  §b  §a

val LV  = "§7LV";
val MV  = "§6MV";
val HV  = "§eHV";
val EV  = "§8EV";
val IV  = "§fIV";
val LUV = "§dLuV";
val ZPM = "§bZPM";
val UV  = "§aUV";

/* Types I know I want to include:
    Components - MOTOR, PISTON, ARM, PUMP, CONVEYOR, EMITTER, SENSOR, FIELD_GEN
    TODO: Decide chipset line
    TODO: Multiblock list

    Types I need to decide about including:
    TODO: Research cables per tier?
    TODO: Magic list?
    TODO: Nuclearcraft fuels list?
*/

val COMP = "§f";
val comps = {
    "MOTOR": "Electric Motor", 
    "PISTON": "Electric Piston", 
    "ARM": "Robot Arm", 
    "PUMP": "Electric Pump", 
    "CONVEYOR": "Conveyor Module", 
    "EMITTER": "Emitter", 
    "SENSOR": "Sensor", 
    "FIELD_GEN": "Field Generator"
    } as string[string];

// LV Map Declaration
global LVResearch as IItemStack[string] = {} as IItemStack[string];

val strtier = TIER + LV;

val datastick = <gregtech:meta_item_1:32708>;

for compkey, compval in comps {
    
    for qualkey, qualval in qualitys {

        val strtype = TYPE + compval;
        val strqual = QUALITY + qualval;

        val item = datastick.withTag({display: {Lore: [strtier, strtype, strqual]}});

        LVResearch["LV" + compkey + qualkey] = item;

        // add research item to JEI
        //mods.jei.JEI.addItem(item);
        // ^ currently does not work due to incomplete implementations in JEI/Crafttweaker/GTCE
        // look into writing a short mod to add all the items I need, may end up being easier

    }

}

