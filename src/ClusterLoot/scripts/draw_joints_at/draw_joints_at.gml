///@desc Draw the joint points at a point.
///@param x
///@param y

var mx = argument0;
var my = argument1;

for (var i = 0; i < ds_list_size(obj_JointManager.joint_list); i++) {
	var pjoint = obj_JointManager.joint_list[|i];
	var jx = physics_joint_get_value(pjoint, phy_joint_anchor_1_x);
	var jy = physics_joint_get_value(pjoint, phy_joint_anchor_1_y);
	
	if (point_distance(mx, my, jx, jy) < 10) {
		draw_set_color(c_red);
		draw_set_alpha(0.33);
		draw_circle(jx, jy, 10, false);
		draw_set_color(c_white);
		draw_set_alpha(1);
		return;
	}
}