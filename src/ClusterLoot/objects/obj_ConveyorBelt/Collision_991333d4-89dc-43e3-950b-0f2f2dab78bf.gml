if (active) {
	var me = id;
	with (other) {
		physics_apply_force(x, y, me.dir * 200000,0);
	}
}