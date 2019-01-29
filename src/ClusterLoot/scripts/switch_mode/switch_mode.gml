///@desc Switch the current game mode.

#macro BUILD 0
#macro TEST 1

game_mode = (game_mode + 1) % 2;
physics_pause_enable(game_mode == 0);

image_index = game_mode;

if (game_mode == TEST) {
	with (obj_BuiltObject) save_physics_state();
	with (obj_Dispenser) {
		alarm[0] = 1;
	}
	with (obj_ChaosZone) {
		alarm[0] = 3*between_hole;
	}
}
else if (game_mode == BUILD) {
	with (obj_BuiltObject) {
		if(game_mode_created == build_mode){
			recover_physics_state();
		}else{
			sell_piece(price);
			instance_destroy();
		}
		reset_motors();
	}
	with (obj_Bomb) {
		active = true;
		visible = true;
	}
	with (obj_Dispenser) {
		alarm[0] = -1;
		total_boxes = 20;
	}
	with (obj_ChaosZone) {
		reset_chaos_zone();
	}
	with (obj_PlayerController) {
		points = 0;
	}
}