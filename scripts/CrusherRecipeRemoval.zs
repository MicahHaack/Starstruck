/* this file removes default recipes from the IE crusher */


/*
    This thing is a mess, crusher recipes are somewhat
    frusterating to remove

    Sae recommended some sort of oredict def for GT ores?
    Apparently that can help deal with the recipes that are told
    to remove themselves but instead decide to stick around


*/

/* temp recipe to view crusher recipe page */
mods.immersiveengineering.Crusher.addRecipe(<minecraft:dirt>, <minecraft:dirt>, 2048);

/* minecraft removal */
mods.immersiveengineering.Crusher.removeRecipe(<minecraft:gravel>);
mods.immersiveengineering.Crusher.removeRecipe(<minecraft:sand>);
mods.immersiveengineering.Crusher.removeRecipe(<minecraft:clay_ball>);
mods.immersiveengineering.Crusher.removeRecipe(<minecraft:quartz>);
mods.immersiveengineering.Crusher.removeRecipe(<minecraft:glowstone_dust>);
mods.immersiveengineering.Crusher.removeRecipe(<minecraft:blaze_powder>);
mods.immersiveengineering.Crusher.removeRecipe(<minecraft:string>);
mods.immersiveengineering.Crusher.removeRecipe(<minecraft:diamond>);
mods.immersiveengineering.Crusher.removeRecipe(<minecraft:redstone>);
mods.immersiveengineering.Crusher.removeRecipe(<minecraft:emerald>);
mods.immersiveengineering.Crusher.removeRecipe(<minecraft:coal>);
mods.immersiveengineering.Crusher.removeRecipe(<minecraft:prismarine_crystals>);

/* dye meta removal */
val dye_meta = [
    15, 4
] as int[];
val dye_def = <minecraft:dye>.definition;
for i in dye_meta {
    mods.immersiveengineering.Crusher.removeRecipe(dye_def.makeStack(i));
}


/* immersive engineering removal */
/* material removal */
val material_meta = [
    17, 18, 24
] as int[];
val material_def = <immersiveengineering:material>.definition;
for i in material_meta {
    mods.immersiveengineering.Crusher.removeRecipe(material_def.makeStack(i));
}

val metal_meta = [
    10, 15
] as int[];
val metal_def = <immersiveengineering:metal>.definition;
for i in metal_meta {
    mods.immersiveengineering.Crusher.removeRecipe(metal_def.makeStack(i));
}

/* nuclearcraft removal */
/* gem_dust removal */
val gem_dust_meta = [
    0, 2, 1, 4, 5, 8, 9, 7, 3
] as int[];
val gem_dust_def = <nuclearcraft:gem_dust>.definition;
for i in gem_dust_meta {
    mods.immersiveengineering.Crusher.removeRecipe(gem_dust_def.makeStack(i));
}

/* dust removal */
val dust_meta = [
    3, 5, 6, 7, 8, 9, 10, 11, 14, 15
] as int[];
val dust_def = <nuclearcraft:dust>.definition;
for i in dust_meta {
    mods.immersiveengineering.Crusher.removeRecipe(dust_def.makeStack(i));
}

mods.immersiveengineering.Crusher.removeRecipe(<nuclearcraft:fission_dust>);

/* enderio removal */
mods.immersiveengineering.Crusher.removeRecipe(<enderio:item_material:32>);
mods.immersiveengineering.Crusher.removeRecipe(<enderio:item_material:74>);


/* libvulpes removal */
/* product dust removal */
val proddust_meta = [
    0, 3, 7
] as int[];
val proddust_def = <libvulpes:productdust>.definition;
for i in proddust_meta {
    mods.immersiveengineering.Crusher.removeRecipe(proddust_def.makeStack(i));
}

mods.immersiveengineering.Crusher.removeRecipe(<libvulpes:productgem:0>);

/* advrocketry removal */
/* product dust removal */
val ar_proddust_meta = [
    0, 1, 
] as int[];
val ar_proddust_def = <advancedrocketry:productdust>.definition;
for i in ar_proddust_meta {
    mods.immersiveengineering.Crusher.removeRecipe(ar_proddust_def.makeStack(i));
}


/* gregtech removal : here we go... */
/* meta_item_1 removal */
val gt_meta = [
    2113, 8122, 8202, 8103, 2017, 2219, 2203, 2331, 2002, 2003, 2006, 2010, 2011,
    2012, 2013, 2014, 2020, 2021, 2022, 2024, 2025, 2027, 2031, 2034, 2037, 2041,
    2042, 2043, 2045, 2049, 2052, 2053, 2054, 2055, 2056, 2058, 2059, 2060, 2063, 
    2064, 2066, 2067, 2068, 2070, 2074, 2076, 2077, 2078, 2085, 2087, 2091, 2092, 
    2103, 2105, 2117, 2122, 2127, 2128, 2129, 2133, 2134, 2135, 2140, 2141, 2142, 
    2144, 2145, 2152, 2154, 2157, 2161, 2180, 2183, 2187, 2189, 2190, 2192, 2195, 
    2197, 2200, 2205, 2206, 2207, 2209, 2211, 2212, 2213, 2214, 2226, 2227, 2228, 
    2229, 2230, 2231, 2232, 2233, 2234, 2235, 2237, 2238, 2243, 2244, 2247, 2281, 
    2297, 2298, 2299, 2300, 2301, 2302, 2303, 2304, 2307, 2308, 2309, 2310, 2311, 
    2312, 2353, 2355, 2364, 2391, 2395, 2398, 2410, 2411, 2421, 2424, 2470, 2879, 
    2965, 2972, 2181, 8212, 2362, 8128, 2360, 8206, 2121, 2123, 8243, 2150, 8226, 
    2286, 8257, 2239, 2108, 2272, 8203, 2099, 2270, 2278, 2098, 2090, 2151, 2324, 
    2188, 8190, 2096, 8244, 2193, 2363, 2146, 8187, 2131, 8211, 2182, 8117, 2274, 
    2148, 8213, 2158, 2280, 2132, 8214, 2097, 2100, 2185, 2282, 8154, 2107, 2358, 
    8281, 2114, 2191, 2361, 2275, 2102, 8085, 2149, 2295, 8247, 2359, 8092, 2294, 
    2118, 8161, 2224, 2139, 2199, 2130, 2271, 2255, 2198, 2115, 2220, 2101, 2026, 
    2033, 2018, 2035, 2044, 2051, 2062, 2071, 2075, 2184, 2032, 2112, 2001, 2016, 
    2047, 2079, 2094, 2095, 2109, 2126, 2065, 2155
] as int[];
val gt_def = <gregtech:meta_item_1>.definition;
for i in gt_meta {
    mods.immersiveengineering.Crusher.removeRecipe(gt_def.makeStack(i));
}

mods.immersiveengineering.Crusher.removeRecipe(oreDict.dustSulfur.firstItem);
mods.immersiveengineering.Crusher.removeRecipe(oreDict.dustGold.firstItem);
mods.immersiveengineering.Crusher.removeRecipe(oreDict.gemSapphire.firstItem);
mods.immersiveengineering.Crusher.removeRecipe(oreDict.dustIridium.firstItem);
mods.immersiveengineering.Crusher.removeRecipe(oreDict.dustSteel.firstItem);
mods.immersiveengineering.Crusher.removeRecipe(oreDict.dustIron.firstItem);
mods.immersiveengineering.Crusher.removeRecipe(oreDict.dustTin.firstItem);
mods.immersiveengineering.Crusher.removeRecipe(oreDict.dustSilver.firstItem);
mods.immersiveengineering.Crusher.removeRecipe(oreDict.dustLead.firstItem);
mods.immersiveengineering.Crusher.removeRecipe(oreDict.dustUranium.firstItem);
mods.immersiveengineering.Crusher.removeRecipe(oreDict.dustNickel.firstItem);
mods.immersiveengineering.Crusher.removeRecipe(oreDict.dustCopper.firstItem);


/* ae2 removal */
mods.immersiveengineering.Crusher.removeRecipe(<appliedenergistics2:material:46>);
mods.immersiveengineering.Crusher.removeRecipe(<appliedenergistics2:material:2>);

/* astral sorcery removal */
mods.immersiveengineering.Crusher.removeRecipe(<astralsorcery:itemcraftingcomponent:2>);
mods.immersiveengineering.Crusher.removeRecipe(<astralsorcery:itemcraftingcomponent:0>);

/* building gadgets removal */
mods.immersiveengineering.Crusher.removeRecipe(<buildinggadgets:construction_chunk_dense>);
mods.immersiveengineering.Crusher.removeRecipe(<buildinggadgets:constructionpaste>);

/* thaumcraft removal */
mods.immersiveengineering.Crusher.removeRecipe(<thaumcraft:amber>);