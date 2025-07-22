
#make the boilers exchangeable so people dont have to bother with exploding boilers
recipes.addShapeless(<hbm:tile.machine_boiler>, [<hbm:tile.machine_industrial_boiler>]);
recipes.addShapeless(<hbm:tile.machine_industrial_boiler>, [<hbm:tile.machine_boiler>]);


#mods.etfuturum.enchantingFuel.addFuel(null); #add something other than lapis maybe?

//less annoying
recipes.addShaped(<ExtraUtilities:unstableingot:1>.withTag({Bug: 1 as byte}),
[[<ore:nuggetGold>,null,null],
[<ExtraUtilities:divisionSigil>.withTag({damage: 256}),null,null],
[<ore:ingotIron>,null,null]]
);

furnace.addRecipe(<ExtraUtilities:divisionSigil>.withTag({damage: 256}),<ExtraUtilities:divisionSigil>);