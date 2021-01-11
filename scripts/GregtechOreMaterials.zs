#priority 100

import mods.gregtech.material.MaterialRegistry;
import mods.gregtech.material.DustMaterial;
import mods.gregtech.material.MaterialCasting;
import mods.gregtech.material.FluidMaterial;
import mods.gregtech.material.Material;

import crafttweaker.oredict.IOreDictEntry;


/* credit for oreByProducts parsing goes to Zook
    ( Discord Zook#3724 )
    Some strange type weirdness going on here, never
    would have figured it out myself.
*/

// var map as value[key]
var macerByProductMap = {} as string[string];
var procStr as string;
var adjDustName as string;

for entry in MaterialRegistry.getAllMaterials() {
    if( entry instanceof DustMaterial ) {
        var dust = MaterialCasting.toDust(entry) as DustMaterial;
        var byProds as [FluidMaterial] = dust.oreByProducts;
        for byProd in byProds {
            //print(dust.localizedName + " byproducts: " + byProd.localizedName );
            procStr = byProd.localizedName.replaceAll(" ", "") as string;
            procStr = "dust" + procStr.substring(0, 1).toUpperCase() + procStr.substring(1) as string;
            //print("post-string processing: " + procStr);
            adjDustName = dust.localizedName.replaceAll(" ", "") as string;
            macerByProductMap[adjDustName] = procStr;

        }
    }
}
