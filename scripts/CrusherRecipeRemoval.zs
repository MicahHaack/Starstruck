/* Author: Kel */
/* this file removes default recipes from the IE crusher */
/* IE Crusher will be tweaked to be incorperated into the ore processing
    system.  The crusher outputs into a modular machinery multiblock.  As
    such, the default ore recipes need to be removed before the new ones are
    added.  Additionally, I've removed a variety of "clutter" recipes to clean up
    the JEI page.  These recipes could have been utilized, but due to the size of the multiblock
    and easier options to process them in single block solutions, I feel the simplicity 
    gained in the recipe page is worth their removal.
*/

// imports
import crafttweaker.oredict.IOreDict;

// single item removal
mods.immersiveengineering.Crusher.removeRecipesForInput(<minecraft:cobblestone>);
mods.immersiveengineering.Crusher.removeRecipesForInput(<minecraft:gravel>);
mods.immersiveengineering.Crusher.removeRecipesForInput(<minecraft:cobblestone>);
mods.immersiveengineering.Crusher.removeRecipesForInput(<minecraft:sandstone>);
mods.immersiveengineering.Crusher.removeRecipesForInput(<minecraft:clay>);
mods.immersiveengineering.Crusher.removeRecipesForInput(<minecraft:quartz_block>);
mods.immersiveengineering.Crusher.removeRecipesForInput(<minecraft:glowstone>);
mods.immersiveengineering.Crusher.removeRecipesForInput(<minecraft:blaze_rod>);
mods.immersiveengineering.Crusher.removeRecipesForInput(<minecraft:bone>);
mods.immersiveengineering.Crusher.removeRecipesForInput(<minecraft:obsidian>);
mods.immersiveengineering.Crusher.removeRecipesForInput(<minecraft:cobblestone>);

/* 
    you may notice these recipes still exist.
    thanks direwolf
*/
mods.immersiveengineering.Crusher.removeRecipesForInput(<buildinggadgets:construction_chunk_dense>);
mods.immersiveengineering.Crusher.removeRecipesForInput(<buildinggadgets:constructionblock_dense>);

// ore dict filtering and recipe removal
for entry in oreDict {
    if ( entry.name has "ore"        ||
         entry.name has "ingot"      ||
         entry.name has "gem"        ||
         entry.name has "wool"       ||
         entry.name has "blockGlass" ||
         entry.name has "itemSlag"   ||
         entry.name has "blockFuelCoke" ) {
            for item in entry.items {
                mods.immersiveengineering.Crusher.removeRecipesForInput(item);
            }
    }
}