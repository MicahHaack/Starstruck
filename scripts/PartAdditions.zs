/*
    File: PartAdditions.zs
    Author: Kel

    This file intends to add various components that are missing from
    the game.  An example is magnetic black steel rods.
    These components usually are needed for crafting purposes.

*/

// important to ensure script loads before registry is frozen
#loader gregtech

// Imports
import mods.gregtech.material.MaterialRegistry;




// Magnetic Material Additions
// MaterialRegistry.createIngotMaterial(int metaItemSubId, String name, int color, String iconSet, int harvestLevel, @Optional MaterialStack[] materialComponents, @Optional float toolSpeed, @Optional int toolDurability, @Optional int blastFurnaceTemperature);

val magneticBlackSteel = MaterialRegistry.createIngotMaterial(500, "magnetic_black_steel", 0x646464, "magnetic", 2, [<material:nickel>*1, <material:black_bronze>*1, <material:steel>*3]);
magneticBlackSteel.addFlags(["GENERATE_ROD", "GENERATE_LONG_ROD"]);