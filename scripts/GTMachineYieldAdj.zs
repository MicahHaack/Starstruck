/*
    Author: Kel
    This script is used to adjust machine yield for GT machines
    This is done to decrease the amount of resources need for 
    automation style machinery.

*/

/* imports */
import crafttweaker.item.IItemStack;
import crafttweaker.recipes.ICraftingRecipe;
import crafttweaker.item.IIngredient;


/* recipe rework function */
function recipeAdj(output as IItemStack, newYield as int) {

    var itemRecipe as ICraftingRecipe = recipes.getRecipesFor(output)[0];
    var inputs = itemRecipe.ingredients2D;
    var name as string = itemRecipe.name + "adj";
    var adjOut = output * newYield;

    recipes.remove(output);

    recipes.addShaped(name, adjOut, inputs);

}


/* Fluid Solidifiers */
var fluidSolidNewYield = 8;
var fluidSolids as IItemStack[] = [
    <gregtech:machine:320>,
    <gregtech:machine:321>,
    <gregtech:machine:322>,
    <gregtech:machine:323>
];

for item in fluidSolids {
    recipeAdj(item, fluidSolidNewYield);
}


/* Chem Reactors */
var chemReactorNewYield = 4;
var chemReactors as IItemStack[] = [
    <gregtech:machine:190>,
    <gregtech:machine:191>,
    <gregtech:machine:192>,
    <gregtech:machine:193>
];

for item in chemReactors {
    recipeAdj(item, chemReactorNewYield);
}

/* Fluid Extractors */
var fluidExtractNewYield = 8;
var fluidExtracts as IItemStack[] = [
    <gregtech:machine:300>,
    <gregtech:machine:301>,
    <gregtech:machine:302>,
    <gregtech:machine:303>
];

for item in fluidExtracts {
    recipeAdj(item, fluidExtractNewYield);
}

/* Assemblers */
var assembleNewYield = 4;
var assembles as IItemStack[] = [
    <gregtech:machine:100>,
    <gregtech:machine:101>,
    <gregtech:machine:102>,
    <gregtech:machine:103>,
    <gregtech:machine:104>
];

for item in assembles {
    recipeAdj(item, assembleNewYield);
}

/* Mixers */
var mixerNewYield = 4;
var mixers as IItemStack[] = [
    <gregtech:machine:370>,
    <gregtech:machine:371>,
    <gregtech:machine:372>,
    <gregtech:machine:373>
];

for item in mixers {
    recipeAdj(item, mixerNewYield);
}

/* Extruders */
var extruderNewYield = 4;
var extruders as IItemStack[] = [
    <gregtech:machine:271>,
    <gregtech:machine:272>,
    <gregtech:machine:273>
];

for item in extruders {
    recipeAdj(item, extruderNewYield);
}

/* Multiblocks */
var multiNewYield = 4;
var multis as IItemStack[] = [
    <gregtech:machine:511>,
    <gregtech:machine:515>,
    <gregtech:machine:525>
];

for item in multis {
    recipeAdj(item, multiNewYield);
}

/* Packagers */
var packersNewYield = 8;
var packers as IItemStack[] = [
    <gregtech:machine:390>,
    <gregtech:machine:391>,
    <gregtech:machine:392>,
    <gregtech:machine:393>
];

for item in packers {
    recipeAdj(item, packersNewYield);
}

/* Unpackagers */
var unpackersNewYield = 8;
var unpacks as IItemStack[] = [
    <gregtech:machine:400>,
    <gregtech:machine:401>,
    <gregtech:machine:402>,
    <gregtech:machine:403>
];

for item in unpacks {
    recipeAdj(item, unpackersNewYield);
}

/* Fermenters */
var fermentNewYield = 4;
var ferments as IItemStack[] = [
    <gregtech:machine:280>,
    <gregtech:machine:281>,
    <gregtech:machine:282>,
    <gregtech:machine:283>
];

for item in ferments {
    recipeAdj(item, fermentNewYield);
}

/* Electrolyzers */
var electroNewYield = 4;
var electros as IItemStack[] = [
    <gregtech:machine:240>,
    <gregtech:machine:241>,
    <gregtech:machine:242>,
    <gregtech:machine:243>
];

for item in electros {
    recipeAdj(item, electroNewYield);
}

/* Distills */
var distillNewYield = 4;
var distills as IItemStack[] = [
    <gregtech:machine:230>,
    <gregtech:machine:231>,
    <gregtech:machine:232>,
    <gregtech:machine:233>
];

for item in distills {
    recipeAdj(item, distillNewYield);
}

/* Centrifuge */
var centiNewYield = 4;
var centis as IItemStack[] = [
    <gregtech:machine:150>,
    <gregtech:machine:151>,
    <gregtech:machine:152>,
    <gregtech:machine:153>
];

for item in centis {
    recipeAdj(item, centiNewYield);
}

/* Brews */
var brewNewYield = 4;
var brews as IItemStack[] = [
    <gregtech:machine:130>,
    <gregtech:machine:131>,
    <gregtech:machine:132>,
    <gregtech:machine:133>
];

for item in brews {
    recipeAdj(item, brewNewYield);
}