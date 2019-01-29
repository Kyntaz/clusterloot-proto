LootEntranceId = instance_create_layer(x, y-110,"LootFiller", obj_LootFillerEntrance);
LootQualityId = instance_create_layer(x, y,"LootFiller", obj_LootFillerQuality);
LootExitId = instance_create_layer(x, y+110,"LootFiller", obj_LootFillerExit);
var entranceId = LootEntranceId;
var qualityId = LootQualityId;
var exitId = LootExitId;
var me = id;

with(LootEntranceId){
	LootQualityId = qualityId;
	LootExitId = exitId;
	LootFillerId = me;
}

with (LootQualityId){
	LootEntranceId = entranceId;
	LootExitId = exitId;
	LootFillerId = me;
	image_xscale = 0.4;
	image_yscale= 0.4;
}


with (LootExitId){
	LootEntranceId = entranceId;
	LootQualityId = exitId;
	LootFillerId = me;
}
