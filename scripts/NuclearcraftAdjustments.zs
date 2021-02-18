/*

    Author: Kel
    This file is used to remove various nuclearcraft recipes, as well
    as add item tooltips

*/


// RTG adjustments
<nuclearcraft:rtg_plutonium>.addTooltip(format.aqua("Produces 32 EU/t constantly."));


// Solar Panel Recipe Removal and JEI hiding
mods.jei.JEI.removeAndHide(<nuclearcraft:solar_panel_basic>);
mods.jei.JEI.removeAndHide(<nuclearcraft:solar_panel_advanced>);
mods.jei.JEI.removeAndHide(<nuclearcraft:solar_panel_du>);
mods.jei.JEI.removeAndHide(<nuclearcraft:solar_panel_elite>);
