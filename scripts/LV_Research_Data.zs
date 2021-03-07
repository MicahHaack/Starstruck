#norun
// disabled for now until I find a better solution

// IMPORTS
import crafttweaker.item.IIngredient;
import mods.modularmachinery.RecipePrimer;
import crafttweaker.item.IItemStack;
import crafttweaker.item.IItemDefinition;
import crafttweaker.creativetabs.ICreativeTab;

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


val names = ["BRC_LV_MOTOR_POOR_RESEARCH", "BRC_LV_MOTOR_FAIR_RESEARCH", "BRC_LV_MOTOR_GOOD_RESEARCH", "BRC_LV_MOTOR_GREAT_RESEARCH", "BRC_LV_MOTOR_PERFECT_RESEARCH"] as string[];
val quals = ["POOR", "FAIR", "GOOD", "GREAT", "PERFECT"] as string[];
val machine = "basic_research_computer";

val LVTab = <creativetab:LV_research_tab>;
//LVTab.tabLabel = "LV Research Data";

/* Need to figure out what I want the recipes to be
    after that I need to find a nice way to add them
*/

var i = 0;
var itemname;

val temp = <contenttweaker:research_data_lv_electric_motor_poor>.definition;
val LVResearchItems = temp.getSubItems(LVTab);

print("PRINTING CREATIVE TAB ITEMS");
for item in LVResearchItems {
    print(item.definition.name);
}

for name in names {

    val temp = mods.modularmachinery.RecipeBuilder.newBuilder(name, machine, 30);
    temp.addEnergyPerTickInput(128);
    temp.addItemInput(<gregtech:meta_item_1:32708>);
    //temp.addItemInput(temp, parts[i]); write function?

    //val strtier = tierNBT["LV" + "MOTOR" + quals[i]];
    //val strtype = typeNBT["LV" + "MOTOR" + quals[i]];
    //val strqual = qualNBT["LV" + "MOTOR" + quals[i]];

    //val unlocalname = LVResearch["LV" + "MOTOR" + quals[i]];

    // find corresponding research item
    // yep, this is ugly as hell
    var item  = <minecraft:dirt> as IItemStack;
    for itemval in LVResearchItems {
        print("itemvaldefname: " + itemval.definition.name);
        print("expecting:      " + "item.contenttweaker.research_data_LV_Electric_Motor_" + quals[i]);
        if(itemval.definition.name == "item.contenttweaker.research_data_LV_Electric_Motor_" + quals[i]) {
            item = itemval;
        }
    }

    mods.jei.JEI.hide(item);

    item = item.withTag({display: {Lore: ["§7Tier: " + "§7LV", "§7Type: " + "§7Electric Motor", "§7Quality: " + qualitys[quals[i]]]}});

    mods.jei.JEI.addItem(item);

    //item = item.withTag({display: {Lore: [strtier, strtype, strqual]}});

    //val item = LVResearch["LV" + "MOTOR" + quals[i]].withTag({display: {Lore: [strtier, strtype, strqual]}}) as IItemStack;
    //item = item.withTag({display: {Lore: [strtier, strtype, strqual]}});

    temp.addItemOutput(item);
    temp.addItemOutput(<minecraft:stone>);
    temp.build();
    i += 1;
}


function addInputs(recipe as mods.modularmachinery.RecipeBuilder, input as IItemStack[string])
{



}
