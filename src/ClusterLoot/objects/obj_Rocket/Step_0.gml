if (active) {
	var p = 3000000;
	var xx = lengthdir_x(p, phy_rotation);
	var yy = lengthdir_y(p, phy_rotation);
	
	physics_apply_force(x, y, xx, yy);
	
	effect_create_below(ef_smoke, x, y, 0, obj_ColorManager.colors[color]);
}