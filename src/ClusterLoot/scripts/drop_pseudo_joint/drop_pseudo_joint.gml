///@desc Materialize the joint.

var mx = x;
var my = y;
var new_obj = obj;
var me = id;

if (obj_PlayerController.money < price) {
	instance_destroy();
	return;
}

for (var i = 0; i < ds_list_size(obj_JointManager.joint_list); i++) {
	var pjoint = obj_JointManager.joint_list[|i];
	var jx = physics_joint_get_value(pjoint, phy_joint_anchor_1_x);
	var jy = physics_joint_get_value(pjoint, phy_joint_anchor_1_y);
	
	if (point_distance(mx, my, jx, jy) < 10) {
		with (obj_Rotor)
		if (joint == pjoint) {
			instance_destroy(me);
			return;
		}
		with (obj_Pusher)
		if (joint == pjoint) {
			instance_destroy(me);
			return;
		}
		
		if (new_obj == obj_Rotor) 
			physics_joint_set_value(pjoint, phy_joint_angle_limits, false);
		else if (new_obj == obj_Pusher) {
			var i1 = -1
			var i2 = -1;
			with (obj_BuiltObject) {
				var idx = ds_list_find_index(associated_joints, pjoint);
				if (idx != -1) {
					ds_list_delete(associated_joints, idx);
					if (i1 == -1) {
						i1 = id;
					}
					else if (i2 == -1) {
						ds_list_delete(associated_joints, idx);
						i2 = id;
					}
				}
			}
			
			ds_list_delete(obj_JointManager.joint_list, ds_list_find_index(obj_JointManager.joint_list, pjoint));
			
			var dir = point_direction(i1.x, i1.y, i2.x, i2.y);
			var ax_x = lengthdir_x(20, dir);
			var ax_y = lengthdir_y(20, dir);
			
			physics_joint_delete(pjoint);
			
			pjoint = physics_joint_prismatic_create(i1, i2, jx, jy, ax_x, ax_y, 0, 100, true, 30000000, 30000000, false, false);
			ds_list_add(i1.associated_joints, pjoint);
			ds_list_add(i2.associated_joints, pjoint);
			ds_list_add(obj_JointManager.joint_list, pjoint);
		}
		
		with (instance_create_layer(jx, jy, "JointObjects", new_obj)) {
			joint = pjoint;
			price = - me.price;
		}
		
		buy_piece(price);
		audio_play_sound(snd_Joint, 1, false);
		instance_destroy();
		return;
	}
}
instance_destroy();