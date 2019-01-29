///@desc Create a pseudo joint.
///@param obj
///@param price

with (instance_create_layer(0, 0, "GameObjects", obj_PseudoJoint)) {
	obj = argument0;
	price = argument1;
	
	sprite_index = object_get_sprite(obj);
	image_alpha = 0.5;
	depth -= 10;
}