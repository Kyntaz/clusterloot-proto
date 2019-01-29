///@desc Create a new pseudo object.
///@param game_obj
///@param game_obj_price
with (instance_create_layer(mouse_x, mouse_y, "GameObjects", obj_PseudoObject)) {
	initialize_pseudo_object(argument0,argument1);
}