var entranceId;
var qualityId = id;
var exitId;
//because there is only 1 of each
with(obj_LootFillerEntrance){
	entranceId = id;
}
with(obj_LootFillerExit){
	exitId = id;
}
LootEntranceId = entranceId;
LootExitId = exitId;

with(obj_LootFillerEntrance){
	LootQualityId = qualityId;
	LootExitId = exitId;
}

with (obj_LootFillerExit){
	LootEntranceId = entranceId;
	LootQualityId = exitId;
}