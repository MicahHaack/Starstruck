/* Author: Kel
    This file handles adding recipes to the maceration stack 
    for the ore processing system.
*/

// Imports
import crafttweaker.item.IIngredient;
import mods.modularmachinery.RecipePrimer;
import crafttweaker.item.IItemStack;

// grab all ore items in the oreDict
for entry in oreDict {
    if( entry.name.startsWith("ore") ) {
        val orename = entry.name.substring(3);
        if( oreDict has "crushed" + orename) {
            var i = 0;
            for item in entry.items {
                val temp = mods.modularmachinery.RecipeBuilder.newBuilder("MS" + orename + "_" + i, "maceration_stack", 30);
                temp.addEnergyPerTickInput(128);
                temp.addItemInput(item);
                // crushed ore
                temp.addItemOutput(oreDict.get("crushed" + orename), 2);

                temp.build();
                i += 1;
            }
        }
    }
}