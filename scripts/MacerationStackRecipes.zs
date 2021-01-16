#priority 10

/* Author: Kel
    This file handles adding recipes to the maceration stack 
    for the ore processing system.

    TODO: Look into recipes with higher yields of crushed ore
*/


import crafttweaker.item.IIngredient;
import mods.modularmachinery.RecipePrimer;
import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDictEntry;

import mods.gregtech.material.MaterialRegistry;
import mods.gregtech.material.DustMaterial;
import mods.gregtech.material.MaterialCasting;
import mods.gregtech.material.FluidMaterial;
import mods.gregtech.material.Material;

// gen maceration byproduct map
var macerByProductMap = {} as string[string];
var procStr as string;
var adjDustName as string;

for entry in MaterialRegistry.getAllMaterials() {
    if( entry instanceof DustMaterial ) {
        var dust = MaterialCasting.toDust(entry) as DustMaterial;
        var byProds as [FluidMaterial] = dust.oreByProducts;
        if( byProds.length > 0 ) {
            procStr = byProds[0].localizedName.replaceAll(" ", "") as string;
            procStr = "dust" + procStr.substring(0, 1).toUpperCase() + procStr.substring(1) as string;
            adjDustName = dust.localizedName.replaceAll(" ", "") as string;
            macerByProductMap[adjDustName] = procStr;
        }
    }
}

// Manual Adjustments
// Not pretty yeah I know but that's a lot of this script
macerByProductMap["Molybdenum"] = "dustMolybdenum";
macerByProductMap["Powellite"] = "dustPowellite";
macerByProductMap["Barite"] = "dustBarite";
macerByProductMap["Coal"] = "dustLignite";
macerByProductMap["Rutile"] = "dustRutile";
macerByProductMap["BandedIron"] = "dustBandedIron";
macerByProductMap["Palladium"] = "dustPalladium";
macerByProductMap["Lignite"] = "dustCoal";
macerByProductMap["Niobium"] = "dustNiobium";
macerByProductMap["Talc"] = "dustTalc";
macerByProductMap["Spessartine"] = "dustSpessartine";
macerByProductMap["NaquadahEnriched"] = "dustNaquadah";
macerByProductMap["Jasper"] = "dustJasper";
macerByProductMap["Sphalerite"] = "dustSphalerite";
macerByProductMap["GarnetYellow"] = "dustAndradite";
macerByProductMap["Cooperite"] = "dustPalladium";
macerByProductMap["Oilsands"] = "dustOilsands";
macerByProductMap["Uranium235"] = "dustUranium235";
macerByProductMap["Bismuth"] = "dustBismuth";
macerByProductMap["Pyrope"] = "dustGarnetRed";
macerByProductMap["Soapstone"] = "dustSoapstone";
macerByProductMap["GarnetRed"] = "dustSpessartine";
macerByProductMap["Wulfenite"] = "dustWulfenite";
macerByProductMap["Naquadah"] = "dustNaquadahEnriched";
macerByProductMap["Grossular"] = "dustGarnetYellow";
macerByProductMap["Almandine"] = "dustGarnetRed";
macerByProductMap["Uraninite"] = "dustUranium";
macerByProductMap["Thorium"] = "dustUranium";
macerByProductMap["Uranium"] = "dustLead";

// grab all ore items in the oreDict
for entry in oreDict {
    if( entry.name.startsWith("ore") ) {

        var orename = entry.name.substring(3);
        var stoneByProd as IOreDictEntry;
        var recipeNameMod;

        // final byproduct selection and string trimming
        if ( orename.startsWith("Gravel") ) {
            stoneByProd = oreDict.get("dustTinyFlint");
            orename = orename.substring(6);
            recipeNameMod = "Gravel";
        } else if ( orename.startsWith("Netherrack") ) {
            stoneByProd = oreDict.get("dustNetherrack");
            orename = orename.substring(10);
            recipeNameMod = "Netherrack";
        } else if ( orename.startsWith("Endstone") ) {
            stoneByProd = oreDict.get("dustEndstone");
            orename = orename.substring(8);
            recipeNameMod = "Endstone";
        } else if ( orename.startsWith("Sand") ) {
            stoneByProd = oreDict.get("dustTinySiliconDioxide");
            orename = orename.substring(4);
            recipeNameMod = "Sand";
        } else if( orename.startsWith("Blackgranite") ) {
            stoneByProd = oreDict.get("dustGraniteBlack");
            orename = orename.substring(12);
            recipeNameMod = "Blackgranite";
        } else if( orename.startsWith("Redgranite") ) {
            stoneByProd = oreDict.get("dustGraniteRed");
            orename = orename.substring(10);
            recipeNameMod = "Redgranite";
        } else if( orename.startsWith("Marble") ) {
            stoneByProd = oreDict.get("dustMarble");
            orename = orename.substring(6);
            recipeNameMod = "Marble";
        } else if( orename.startsWith("Basalt") ) {
            stoneByProd = oreDict.get("dustBasalt");
            orename = orename.substring(6);
            recipeNameMod = "Basalt";
        } else {
            stoneByProd = oreDict.get("dustStone");
            recipeNameMod = "Stone";
        }

        if( oreDict has "crushed" + orename) {
            var i = 0;
            for item in entry.items {
                val temp = mods.modularmachinery.RecipeBuilder.newBuilder("MS" + orename + "_" + recipeNameMod + "_" + i, "maceration_stack", 30);
                temp.addEnergyPerTickInput(128);
                temp.addItemInput(item);
                // crushed ore
                temp.addItemOutput(oreDict.get("crushed" + orename), 2);

                temp.addItemOutput(stoneByProd, 1);

                temp.build();
                i += 1;

            if( oreDict has macerByProductMap[orename] ) {
                temp.addItemOutput(oreDict.get(macerByProductMap[orename]));
            }
        

            }
        } 

    }
}