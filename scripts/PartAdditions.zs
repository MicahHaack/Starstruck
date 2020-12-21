/*
    File: PartAdditions.zs
    Author: Kel

    This file intends to add various components that are missing from
    the game.  An example is magnetic black steel rods.
    These components usually are needed for crafting purposes.

    Note localization for newly defined materials needs to be done
    externally in the gregtech lang file.

    This is found in resources\gregtech\lang\en_us.lang

*/

// important to ensure script loads before registry is frozen
#loader gregtech

// Imports
import mods.gregtech.material.MaterialRegistry;


/* print list of materials on startup */
var materialList = MaterialRegistry.getAllMaterials();

// Misc Missing Parts
val blackSteel = MaterialRegistry.get("black_steel");
blackSteel.addFlags(["GENERATE_GEAR", "GENERATE_SMALL_GEAR"]);


// Magnetic Material Additions
// MaterialRegistry.createIngotMaterial(int metaItemSubId, String name, int color, String iconSet, int harvestLevel, @Optional MaterialStack[] materialComponents, @Optional float toolSpeed, @Optional int toolDurability, @Optional int blastFurnaceTemperature);

val magneticBlackSteel = MaterialRegistry.createIngotMaterial(500, "magnetic_black_steel", 0x646464, "magnetic", 2, [<material:nickel>*1, <material:black_bronze>*1, <material:steel>*3]);
magneticBlackSteel.addFlags(["GENERATE_ROD", "GENERATE_LONG_ROD"]);