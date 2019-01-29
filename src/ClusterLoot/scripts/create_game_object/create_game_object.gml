///@desc Create a game object.
///@param x
///@param y
///@param obj

var xx = argument0;
var yy = argument1;
var obj = argument2;

with (instance_create_layer(xx, yy, "GameObjects", obj)) {
	//process_joints();
}