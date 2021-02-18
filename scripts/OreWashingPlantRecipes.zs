#priority 10

/* Author: Kel
*/

import crafttweaker.item.IIngredient;
import mods.modularmachinery.RecipePrimer;
import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDictEntry;
import crafttweaker.liquid.ILiquidStack;

import mods.gregtech.material.MaterialRegistry;
import mods.gregtech.material.DustMaterial;
import mods.gregtech.material.MaterialCasting;
import mods.gregtech.material.FluidMaterial;
import mods.gregtech.material.Material;

// gen ore wash byproduct map
var washByProductMap = {} as string[string];
var procStr as string;
var adjDustName as string;

for entry in MaterialRegistry.getAllMaterials() {
    if( entry instanceof DustMaterial ) {
        var dust = MaterialCasting.toDust(entry) as DustMaterial;
        var byProds as [FluidMaterial] = dust.oreByProducts;
        if( byProds.length > 1 ) {
            procStr = byProds[1].localizedName.replaceAll(" ", "") as string;
            procStr = "dust" + procStr.substring(0, 1).toUpperCase() + procStr.substring(1) as string;
            adjDustName = dust.localizedName.replaceAll(" ", "") as string;
            washByProductMap[adjDustName] = procStr;
        }
        else if( byProds.length > 0 ) {
            procStr = byProds[0].localizedName.replaceAll(" ", "") as string;
            procStr = "dust" + procStr.substring(0, 1).toUpperCase() + procStr.substring(1) as string;
            adjDustName = dust.localizedName.replaceAll(" ", "") as string;
            washByProductMap[adjDustName] = procStr;
        }
    }
}

// Manual Adjustments
// Not pretty yeah I know but that's a lot of this script
washByProductMap["Bismuth"] = "dustBismuth";
washByProductMap["Molybdenum"] = "dustMolybdenum";
washByProductMap["Niobium"] = "dustNiobium";
washByProductMap["Palladium"] = "dustPalladium";
washByProductMap["Uranium238"] = "dustLead";
washByProductMap["Uranium235"] = "dustUranium235";
washByProductMap["BandedIron"] = "dustBandedIron";
washByProductMap["Sheldonite"] = "dustPalladium";
washByProductMap["Rutile"] = "dustRutile";
washByProductMap["Powellite"] = "dustPowellite";
washByProductMap["Ruby"] = "dustChrome";
washByProductMap["Wulfenite"] = "dustWulfenite";
washByProductMap["Jasper"] = "dustJasper";
washByProductMap["Lignite"] = "dustCoal";
washByProductMap["GarnetRed"] = "dustSpessartine";
washByProductMap["GarnetYellow"] = "dustAndradite";
washByProductMap["Pitchblende"] = "dustThorium";
washByProductMap["Barite"] = "dustBarite";
washByProductMap["Talc"] = "dustTalc";
washByProductMap["Soapstone"] = "dustSoapstone";
washByProductMap["Naquadah"] = "dustNaquadahEnriched";
washByProductMap["NaquadahEnriched"] = "dustNaquadah";
washByProductMap["Oilsands"] = "dustOilsands";

// grab all ore items in the oreDict
for entry in oreDict {
    if( entry.name.startsWith("crushed") ) {

        var orename = entry.name.substring(7);

        if( oreDict has "crushedPurified" + orename) {
            var i = 0;
            for item in entry.items {
                val temp = mods.modularmachinery.RecipeBuilder.newBuilder("MS" + orename + "_" + i, "washing_plant", 30);
                temp.addEnergyPerTickInput(128);
                temp.addItemInput(item);
                temp.addFluidInput(<liquid:water> * 100);
                // crushed ore
                temp.addItemOutput(oreDict.get("crushedPurified" + orename), 1);
                temp.build();
                i += 1;

                temp.addItemOutput(oreDict.get("dustStone"));

            if( oreDict has washByProductMap[orename] ) {
                temp.addItemOutput(oreDict.get(washByProductMap[orename]));
            }
        

            }
        } 

    }
}