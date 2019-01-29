///@desc Get all built objects in a point.
///@param x
///@param y
///@return obj_list

var xx = argument0;
var yy = argument1;
var objs = ds_list_create();

with (obj_BuiltObject) {
	if (collision_point(xx, yy, id, false, false))
		ds_list_add(objs, id);
}

return objs;