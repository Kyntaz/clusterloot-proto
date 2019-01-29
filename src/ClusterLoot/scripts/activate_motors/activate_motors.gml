///@desc Activate the motors of a color
///@param color_n

with (obj_Rotor) {
	if (color == argument0) {
		mode = (mode + 1) % 3;
		if (mode == 0) {
			physics_joint_enable_motor(joint, false);
		}
		else if (mode == 1) {
			physics_joint_enable_motor(joint, true);
			physics_joint_set_value(joint, phy_joint_motor_speed, 30000000);
		}
		else if (mode == 2) {
			physics_joint_enable_motor(joint, true);
			physics_joint_set_value(joint, phy_joint_motor_speed, -30000000);
		}
	}
}

with (obj_Pusher) {
	if (color == argument0) {
		mode = (mode + 1) % 3;
		if (mode == 0) {
			physics_joint_enable_motor(joint, false);
		}
		else if (mode == 1) {
			physics_joint_enable_motor(joint, true);
			physics_joint_set_value(joint, phy_joint_motor_speed, 30000000);
		}
		else if (mode == 2) {
			physics_joint_enable_motor(joint, true);
			physics_joint_set_value(joint, phy_joint_motor_speed, -30000000);
		}
	}
}

with (obj_ConveyorBelt) {
	if (color == argument0) {
		mode = (mode + 1) % 3;
		if (mode == 0) {
			active = false;
			image_speed = 0;
			dir = -1;
		}
		else if (mode == 1) {
			active = true;
			image_speed = 1;
			dir = 1;
		}
		if (mode == 2) {
			active = true;
			image_speed = -1;
			dir = -1;
		}
	}
}

with (obj_Rocket) {
	if (color == argument0) {
		mode = (mode + 1) % 2;
		if (mode == 0) {
			active = true;
		}
		else if (mode == 1) {
			active = false;
		}
		audio_play_sound(snd_Rocket, 1, false);
	}
}