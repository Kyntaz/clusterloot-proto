var point = 0;
var xpos = 0;
var ypos = 0;

with (LootQualityId){
	point = points;
}
with(obj_LootFillerQuality){
	select_rarity();
}

with (LootExitId){
	xpos = x;
	ypos = y;
}

with (other){
	instance_destroy();
}

with(instance_create_layer(xpos, ypos+5, "GameObjects", obj_LootBox)){
	points = point;
	if (points == common) image_index = 1;
	else if (points == uncommon) image_index = 2;
	else if (points == rare) image_index = 3;
	else image_index = 0;
}

