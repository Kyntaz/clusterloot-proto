/// @description Generate a Hole
// step = 0 = between hole
// step = 1 = warning is active
// step = 2 = hole is active
// hole_to_create = 0 = BlackHole
// hole_to_create = 1 = PushHole
// hole_to_create default is black hole
if (mode_is_test) {
	if(step == 0){
		with(ChaosWarningID){
			image_speed = 1;
		}
		alarm[0] = warning_time;
		step = 1;
	}else if(step == 1){
		ActiveHoleID = instance_create_layer(x, y,"Chaos", obj_BlackHole);
		alarm[0] = hole_life;
		step = 2;
	}else if(step == 2){
		with(ActiveHoleID){
			instance_destroy();
		}
		ActiveHoleID = instance_create_layer(x, y,"Chaos", obj_PushHole);
		with(ChaosWarningID){
			image_speed = -1;
		}
		alarm[0] = hole_life/2;
		step = 3;
	}else if(step == 3){
		with(ActiveHoleID){
			instance_destroy();
		}
		ActiveHoleID = 0;
		with(ChaosWarningID){
			image_index = 0;
			image_speed = 0;
		}
		alarm[0] = between_hole;
		step = 0;
	}
}