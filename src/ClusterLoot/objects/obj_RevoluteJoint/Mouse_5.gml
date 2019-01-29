physics_joint_set_value(joint, phy_joint_motor_speed, -30000000);

if (mode_is_test) {
	enabled = !enabled;
	physics_joint_enable_motor(joint, enabled);
}

if (enabled) {
	image_blend = c_green;
}
else {
	image_blend = c_white;
}