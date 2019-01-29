/// @desc Set random rarity for LootFiller
/// @function select_rarity()
#macro common 10
#macro uncommon 30
#macro rare 100
points = choose(common,uncommon,rare);

if (points<(common+1)){
	sprite_index = spr_RarityCommon;
}else if (points<(uncommon+1)){
	sprite_index = spr_RarityUncommon;
}else if (points<(rare+1)){
	sprite_index = spr_RarityRare;
}
