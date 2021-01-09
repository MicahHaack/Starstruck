#loader gregtech
import mods.gregtech.material.MaterialRegistry;
import mods.gregtech.material.DustMaterial;
import mods.gregtech.material.MaterialCasting;
import mods.gregtech.material.FluidMaterial;
import mods.gregtech.material.Material;

var dust as DustMaterial;

/*for entry in MaterialRegistry.getAllMaterials() {
    dust = MaterialCasting.toDust(entry);
    //dust = entry as DustMaterial;
    if ( !isNull(dust) ) {
        print("material name: " + dust.name);
        if ( dust.oreByProducts.length > 0 ) {
            for item in dust.oreByProducts {
                print(dust.name + " byproduct: " + item);
            }
        }
    }
}*/

for entry in MaterialRegistry.getAllMaterials() {
    if( entry instanceof DustMaterial ) {
        dust = MaterialCasting.toDust(entry);
        print("material name: " + dust.name);
        if( !isNull(dust.oreByProducts) ) {
            for item in dust.oreByProducts {
                print(dust.name + " byproduct: " + item);
            }
        }
    }
}