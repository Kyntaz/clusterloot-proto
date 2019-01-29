///@desc Reset the motors

with (obj_Rotor) {
	if (true) {
		mode = 0;
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
	if (true) {
		mode = 0;
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
	if (true) {
		mode = 0;
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
	if (true) {
		mode = 0;
		if (mode == 0) {
			active = false;
		}
		else if (mode == 1) {
			active = true;
		}
	}
}