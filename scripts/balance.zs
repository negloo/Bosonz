#[HBM BALANCE]

#the goal is to make HBM easier yet keeping the later, more dangerous tiers, and especially their destruction devices still/more difficult to access
#most recipes are modified in the configs of HBM NTM

#remove nitra crafting
#!TODO

# "remove" every chainsaw to avoid confusion about nitra and to not have an early game 25 damage weapon
recipes.removeShaped(<hbm:item.elec_axe>);
recipes.removeShaped(<hbm:item.chainsaw>);
recipes.addShaped(<hbm:item.chainsaw>,
[[<hbm:tile.dungeon_chain>,<hbm:tile.dungeon_chain>,<hbm:item.shell:30>],
[<hbm:item.blades_steel>,<hbm:item.blades_steel>,<hbm:item.piston_selenium>],
[<hbm:tile.dungeon_chain>,<hbm:tile.dungeon_chain>,<ore:tinyEuphemium>]]
);

#reworked and cheaper coils
recipes.removeShaped(<hbm:item.coil_copper>);
recipes.addShaped(<hbm:item.coil_copper>,
[[null,<hbm:item.wire_fine:31>,null],
[<hbm:item.wire_fine:31>,<ore:ingotIron>,<hbm:item.wire_fine:31>],
[null,<hbm:item.wire_fine:31>,null]]
);

recipes.removeShaped(<hbm:item.coil_copper_torus>);
recipes.addShaped(<hbm:item.coil_copper_torus>,
[[<hbm:item.coil_copper>],
[<ore:ingotIron>],
[<hbm:item.coil_copper>]]
);

recipes.removeShaped(<hbm:item.coil_gold>);
recipes.addShaped(<hbm:item.coil_gold>,
[[null,<ore:wireFineGold>,null],
[<ore:wireFineGold>,<ore:ingotIron>,<ore:wireFineGold>],
[null,<ore:wireFineGold>,null]]
);

recipes.removeShaped(<hbm:item.coil_gold_torus>);
recipes.addShaped(<hbm:item.coil_gold_torus>,
[[<hbm:item.coil_gold>],
[<ore:ingotIron>],
[<hbm:item.coil_gold>]]
);

recipes.removeShaped(<hbm:item.coil_tungsten>);
recipes.addShaped(<hbm:item.coil_tungsten>,
[[null,<hbm:item.wire_fine:7400>,null],
[<hbm:item.wire_fine:7400>,<ore:ingotIron>,<hbm:item.wire_fine:7400>],
[null,<hbm:item.wire_fine:7400>,null]]
);


#circuit stuff
recipes.removeShaped(<hbm:item.circuit:1>);
recipes.addShaped(<hbm:item.circuit:1>*2,
[[<ore:dustAluminum>],
[<hbm:item.plate_polymer>],
[<ore:wireFineCopper>]]
);
recipes.addShaped(<hbm:item.circuit:1>*2,
[[<ore:tinyNiobium>],
[<hbm:item.plate_polymer>],
[<ore:wireFineCopper>]]
);
recipes.addShaped(<hbm:item.circuit:1>*2,
[[<ore:dustAluminum>],
[<hbm:item.plate_polymer>],
[<ore:wireFineAluminum>]]
);
recipes.addShaped(<hbm:item.circuit:1>*2,
[[<ore:tinyNiobium>],
[<hbm:item.plate_polymer>],
[<ore:wireFineAluminum>]]
);



recipes.removeShaped(<hbm:item.tank_steel>);
recipes.addShaped(<hbm:item.tank_steel>,
[[null,<ore:plateTitanium>,null],
[<ore:plateSteel>,null,<ore:plateSteel>],
[null,<ore:plateTitanium>,null]]
);

recipes.removeShaped(<hbm:item.pipes_steel>);
recipes.addShaped(<hbm:item.pipes_steel>,
[[<ore:ingotSteel>],
[<ore:blockSteel>],
[<ore:ingotSteel>]]
);

recipes.removeShaped(<hbm:tile.machine_armor_table>);
recipes.addShaped(<hbm:tile.machine_armor_table>,
[[<ore:plateSteel>,<ore:plateSteel>,<ore:plateSteel>],
[<ore:ingotTungsten>,<minecraft:crafting_table>,<ore:ingotTungsten>],
[<ore:ingotTungsten>,<ore:ingotTungsten>,<ore:ingotTungsten>]]
);

#flint and steel with steel
recipes.removeShapeless(<minecraft:flint_and_steel>);
recipes.addShapeless(<minecraft:flint_and_steel>, [<ore:ingotSteel>,<minecraft:flint>]);

#nerf block charges
recipes.removeShaped(<hbm:tile.det_miner>);
recipes.addShaped(<hbm:tile.det_miner>,
[[<minecraft:flint>,<minecraft:flint>,<minecraft:flint>],
[<hbm:item.plate_iron>,<hbm:item.ball_dynamite>,<hbm:item.plate_iron>],
[<hbm:item.plate_iron>,<hbm:item.ball_dynamite>,<hbm:item.plate_iron>]]
);
recipes.addShaped(<hbm:tile.det_miner>*3,
[[<minecraft:flint>,<minecraft:flint>,<minecraft:flint>],
[<hbm:item.plate_iron>,<ore:AnyPlasticexplosive>,<hbm:item.plate_iron>],
[<hbm:item.plate_iron>,<ore:AnyPlasticexplosive>,<hbm:item.plate_iron>]]
);

recipes.removeShaped(<hbm:tile.machine_drain>);
recipes.addShaped(<hbm:tile.machine_drain>,
[[<hbm:item.plate_steel>,<hbm:item.plate_steel>,<hbm:item.plate_steel>],
[<hbm:item.tank_steel>,null,null],
[<hbm:item.plate_steel>,<hbm:item.plate_steel>,<hbm:item.plate_steel>]]
);

//no crafting tnt with you hands!
recipes.removeShapeless(<hbm:item.ball_tnt>);

recipes.removeShaped(<hbm:tile.pwr_fuel>*4);

recipes.addShaped(<hbm:tile.pwr_fuel>*4,
[[<ore:plateLead>,<ore:plateTripleZirconium>,<ore:plateLead>],
[<ore:plateLead>,null,<ore:plateLead>],
[<ore:plateLead>,<ore:plateTripleZirconium>,<ore:plateLead>]]
);

//I tried to build i slightly modified version of openblock but failed miserably (I don't Java but the gradle version they used was like 2.14. That's a reality of workin on 1.7.10 mods i guess).
//What i tried to change was the sponge/sponge on a stick behavior around lava to make dealing with lava easier to allow players to explore near bedrock pretty early without getting cancer
//The fact that the recipe under gives 64 is a temporary "fix" that still allows players to get rid of lava efficiently
recipes.removeShapeless(<OpenBlocks:sponge>);
recipes.addShapeless(<OpenBlocks:sponge>*64, [<ore:blockWool>,<minecraft:slime_ball>,<ore:blockWool>,<minecraft:slime_ball>,<hbm:tile.gravel_obsidian>]);

//for some reason the recipe doesnt exist
recipes.addShapeless(<hbm:tile.hadron_coil_neodymium>,
[<hbm:item.wire_dense:6000>,<hbm:item.wire_dense:6000>,<hbm:item.wire_dense:6000>,<hbm:item.wire_dense:6000>]
);

recipes.removeShaped(<hbm:tile.barrel_tcalloy>);
recipes.addShaped(<hbm:tile.barrel_tcalloy>,
[[<ore:plateLead>,<ore:plateTitanium>,<ore:plateLead>],
[<ore:TcAlloy>,null,<ore:TcAlloy>],
[<ore:plateLead>,<ore:plateTitanium>,<ore:plateLead>]]
);

recipes.removeShaped(<hbm:tile.rbmk_boiler>);
recipes.addShaped(<hbm:tile.rbmk_boiler>,
[[null,<hbm:item.shell:2900>,null],
[<hbm:item.pipe:2900>,<hbm:tile.rbmk_blank>,<hbm:item.pipe:2900>],
[null,<hbm:item.shell:2900>,null]]
);

recipes.removeShaped(<hbm:tile.rbmk_absorber>);
recipes.addShaped(<hbm:tile.rbmk_absorber>,
[[null,<ore:ingotBoron>,null],
[<ore:ingotBoron>,<hbm:tile.rbmk_blank>,<ore:ingotBoron>],
[null,<ore:ingotBoron>,null]]
);

recipes.removeShaped(<hbm:item.rbmk_fuel_empty>);
recipes.addShaped(<hbm:item.rbmk_fuel_empty>,
[[<ore:ingotZirconium>,<hbm:item.rod_quad_empty>,<ore:ingotZirconium>],
[null,null,null],
[<ore:ingotZirconium>,<hbm:item.rod_quad_empty>,<ore:ingotZirconium>]]
);

#this shit is overpowered... im either gonna have to tune down the numbers or keep it uncraftable
recipes.removeShaped(<hbm:item.jackt2>);
recipes.removeShaped(<hbm:item.jackt>);

recipes.removeShaped(<hbm:item.canteen_vodka>);
recipes.addShapeless(<hbm:item.canteen_vodka>,
[<minecraft:potato>,<hbm:item.plate_cast:42>]
);


#template
#recipes.removeShaped();
#recipes.addShaped(,
#[[null,null,null],
#[null,null,null],
#[null,null,null]]
#);
#recipes.addShapeless(<hbm:tile.hadron_coil_neodymium>,
#[]
#);