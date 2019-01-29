var xx = x;
var yy = y;
var p = 300000;
var me = id;
with (obj_GameObject) {
	if (id != me) {
		var dir = point_direction(me.x, me.y, x, y);
		var dist = point_distance(me.x, me.y, x, y);
		var xx = lengthdir_x(p / dist*dist, dir);
		var yy = lengthdir_y(p / dist*dist, dir);
		if(dist < 500){
			physics_apply_impulse(x, y, xx, yy);
		}
	}
}
alarm[0] = timer;