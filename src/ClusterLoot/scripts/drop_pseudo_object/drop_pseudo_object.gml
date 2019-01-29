///@desc Create the associated game object.

var me = id;
var cost = price;

if (obj_PlayerController.money < cost) {
	instance_destroy();
	return;
}

with (instance_create_layer(x, y, "GameObjects", game_obj)) {
	image_angle = me.image_angle;
	phy_rotation = - me.image_angle;
	price = cost
	if(mode_is_build){
		game_mode_created = build_mode;
	}else{
		game_mode_created = test_mode;
	}
	buy_piece(cost);	
	process_joints();
}
audio_play_sound(choose(snd_Placement1, snd_Placement2, snd_Placement3, snd_Placement4, snd_Placement5), 1, false);
instance_destroy();