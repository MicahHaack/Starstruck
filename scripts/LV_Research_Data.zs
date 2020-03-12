// IMPORTS
import crafttweaker.item.IIngredient;
import mods.modularmachinery.RecipePrimer;


// ITEM INITS
val emptyDataStick = <gregtech:meta_item_1:32708>;

val poorMotorDS = <gregtech:meta_item_1:32708>.withTag({ench: [], Unbreakable: 0 as byte, HideFlags: 0, display: {Lore: ["§r§7Research Tier: §9LV", "§r§7Research Type: §fMotor", "§r§7Research Quality: §fPoor"], Name: "§rData Stick"}, CanDestroy: []});
//poorMotorDS.addTooltip(format.darkGray("Research Tier: LV\n" + format.gray("Research Type: Motor\n") + format.black("Research Quality: Poor")));

val tooltiptest = mods.modularmachinery.RecipeBuilder.newBuilder("BRC_test_data", "basic_research_computer", 30, 0);

tooltiptest.addEnergyPerTickInput(128);

tooltiptest.addItemInput(emptyDataStick);
// Doesn't work, look into preventing itemstacks from being consumed
tooltiptest.setChance(0);
tooltiptest.addItemInput(<ore:plateCopper>);
tooltiptest.addItemInput(<ore:plateSteel>);

tooltiptest.addItemOutput(poorMotorDS);
tooltiptest.build();

val tooltiptestm = mods.modularmachinery.RecipeBuilder.newBuilder("BRC_test_data_to_motor", "basic_research_computer", 30, 0);

tooltiptestm.addEnergyPerTickInput(128);

tooltiptestm.addItemInput(poorMotorDS);

tooltiptestm.addItemInput(<ore:plateSteel>);

tooltiptestm.addItemOutput(<gregtech:meta_item_1:32600>);
tooltiptestm.build();
