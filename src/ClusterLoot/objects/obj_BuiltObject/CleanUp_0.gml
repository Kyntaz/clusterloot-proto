clean_joint_points();
for (var i = 0; i < ds_list_size(associated_joints); i++) {
	var pjoint = associated_joints[|i];
	with (obj_Rotor) {
		if (joint == pjoint) {
			sell_piece(price);
			instance_destroy();
		}
	}
	with (obj_Pusher) {
		if (joint == pjoint) {
			sell_piece(price);
			instance_destroy();
		}
	}
	physics_joint_delete(pjoint);
	ds_list_delete(obj_JointManager.joint_list, ds_list_find_index(obj_JointManager.joint_list, pjoint));
}