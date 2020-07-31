// IMPORTS
import crafttweaker.item.IIngredient;
import mods.modularmachinery.RecipePrimer;
import crafttweaker.item.IItemStack;

// ITEM INITS
val emptyDataStick = <gregtech:meta_item_1:32708>;


// MOTORS

val parts = [
    //{
       <minecraft:stone>
    /*}*/, 
    <minecraft:stone:1>, 
    <minecraft:stone:2>, 
    <minecraft:stone:3>, 
    <minecraft:stone:4>
 ] as IItemStack[];//[string];


val names = ["BRC_LV_MOTOR_POOR_RESEARCH", "BRC_LV_MOTOR_FAIR_RESEARCH", "BRC_LV_MOTOR_GOOD_RESEARCH", "BRC_LV_MOTOR_GREAT_RESEARCH", "BRC_LV_MOTOR_PERFECT_RESEARCH"] as string[];
val quals = ["POOR", "FAIR", "GOOD", "GREAT", "PERFECT"] as string[];
val machine = "basic_research_computer";

var i = 0;
for name in names {

    val temp = mods.modularmachinery.RecipeBuilder.newBuilder(name, machine, 30);
    temp.addEnergyPerTickInput(128);
    temp.addItemInput(<gregtech:meta_item_1:32708>);
    //temp.addItemInput(temp, parts[i]); write function?
    temp.addItemOutput(LVResearch["LV" + "MOTOR" + quals[i]]);
    temp.build();
    i += 1;

}


function addInputs(recipe as mods.modularmachinery.RecipeBuilder, input as IItemStack[string])
{



}
