event_inherited();

if (mode_is_test && active) {
	var me = id;
	with (obj_LootBox) {
		if (id != me) {
			var p = 300000000;
			var dir = point_direction(me.x, me.y, x, y);
			var dist = point_distance(me.x, me.y, x, y);
			var xx = lengthdir_x(p / dist, dir);
			var yy = lengthdir_y(p / dist, dir);
	
			physics_apply_impulse(x, y, xx, yy);
		}
	}
	
	effect_create_below(ef_explosion, x, y, 1, c_gray);
	audio_play_sound(snd_Explode, 1, false);
	//instance_destroy();
	active = false;
	visible = false;
}