if (mode_is_test) {
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