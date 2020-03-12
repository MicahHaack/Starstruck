import mods.modularmachinery.RecipePrimer;

//mods.modularmachinery.RecipeBuilder.newBuilder(String recipeRegistryName, String associatedMachineRegistryName, int processingTickTime);

//mods.modularmachinery.RecipeBuilder.newBuilder(String recipeRegistryName, String associatedMachineRegistryName, int processingTickTime, int sortingPriority);

val LVChip = <ore:circuitBasic>;
val steelPlate = <gregtech:meta_item_1:12184>;

// Placeholder
val MVResearch = <minecraft:paper>;

val basicMVResearch = mods.modularmachinery.RecipeBuilder.newBuilder("BRC_MV_research", "basic_research_computer", 20, 1);

basicMVResearch.addEnergyPerTickInput(128);

basicMVResearch.addItemInput(LVChip);
basicMVResearch.setChance(0.1);

basicMVResearch.addItemOutput(MVResearch);
basicMVResearch.setChance(0.05);
basicMVResearch.build();

val advMVResearch = mods.modularmachinery.RecipeBuilder.newBuilder("BRC_advMV_research", "basic_research_computer", 30, 0);

advMVResearch.addEnergyPerTickInput(128);

advMVResearch.addItemInput(LVChip);
advMVResearch.setChance(0.05);

advMVResearch.addItemInput(steelPlate);
advMVResearch.setChance(0.2);

advMVResearch.addItemOutput(MVResearch);
advMVResearch.setChance(0.2);
advMVResearch.build();