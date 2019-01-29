///@desc Create the actual joints on a new object.

var me = id;
with (obj_BuiltObject) {
	if (id != me)
	for (var i = 0; i < ds_list_size(joint_point_list_x); i++) 
	for (var j = 0; j < ds_list_size(me.joint_point_list_x); j++) {
		var jp1_v_x = joint_point_list_x[|i];
		var jp1_v_y = joint_point_list_y[|i];
		var jp2_v_x = me.joint_point_list_x[|j];
		var jp2_v_y = me.joint_point_list_y[|j];
		
		var rotation1 = image_angle;
		var rotation2 = me.image_angle;
		
		var jp1_dir = point_direction(0, 0, jp1_v_x, jp1_v_y);
		var jp2_dir = point_direction(0, 0, jp2_v_x, jp2_v_y);
		var jp1_len = point_distance(0, 0, jp1_v_x, jp1_v_y);
		var jp2_len = point_distance(0, 0, jp2_v_x, jp2_v_y);
		jp1_dir += rotation1;
		jp2_dir += rotation2;
		
		var jp1_x = lengthdir_x(jp1_len, jp1_dir) + x;
		var jp1_y = lengthdir_y(jp1_len, jp1_dir) + y;
		var jp2_x = lengthdir_x(jp2_len, jp2_dir) + me.x;
		var jp2_y = lengthdir_y(jp2_len, jp2_dir) + me.y;
		
		if (point_distance(jp1_x, jp1_y, jp2_x, jp2_y) < 10) {
			var joint = physics_joint_revolute_create(id, me, jp1_x, jp1_y, 0, 0, true, 30000000, 30000000 , false, false);
			ds_list_add(obj_JointManager.joint_list, joint);
			ds_list_add(me.associated_joints, joint);
			ds_list_add(associated_joints, joint);

		}
	}
}