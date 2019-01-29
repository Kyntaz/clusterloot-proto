///@desc Create a joint for the top 2 Built Objects.
///@param joint_id

// Enum to easily identify joints
enum JOINT {
	WELD,
	REVOLUTE
}

// Actual Function
var objs = get_built_objects_at_point(x, y);
if (ds_list_size(objs) < 2) {
	instance_destroy();
	return;
}

var obj1 = objs[|0];
var obj2 = objs[|1];

switch (argument0) {
	case JOINT.WELD:
		joint = physics_joint_revolute_create(obj1, obj2, x, y, 0, 0, true, 0, 0, false, false);
	break;
	
	case JOINT.REVOLUTE:
				joint = physics_joint_revolute_create(obj1, obj2, x, y, 0, 0, false, 30000000, 30000000, false, false);
	break;
}

set_owner(obj1);

// Free memory
ds_list_destroy(objs);