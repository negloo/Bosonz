import minetweaker.oredict.IOreDictEntry;
import minetweaker.item.IIngredient;
import minetweaker.item.IItemStack;

////this shit is fucking awful to work with
//#Considering how the modpack revolves around only HBM NTM i prefer unifying the oredict around it.
//function replace_dict(dict as IOreDictEntry, base as IItemStack){
//    dict.add(base);
//}
//
//val replacements = [<hbm:item.ingot_copper>,<Forestry:ingotTin>,<hbm:item.ingot_aluminium>,<hbm:item.ingot_aluminium>,<hbm:item.ingot_aluminium>] as IItemStack[];
//for i, dict in dicts{
//    replace_dict(dict,replacements[i]);
//}
////
////for i, dict in dicts{
////    dict.add(replacements[i]);
//}

//the stuff above works half the time. If someone know why please tell me.
//val dicts = [<ore:ingotCopper>,<ore:ingotTin>,<ore:ingotAluminium>,<ore:ingotAluminum>,<ore:ingotNaturalAluminum>] as IOreDictEntry[];
//val replacements = [<hbm:item.ingot_copper>,<Forestry:ingotTin>,<hbm:item.ingot_aluminium>,<hbm:item.ingot_aluminium>,<hbm:item.ingot_aluminium>] as IItemStack[];
//for i, dict in dicts{
//    for item in dict.items{
//        dict.remove(item);
//    }
//
//}

// I giver up trying to make this this way