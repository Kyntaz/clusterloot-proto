///@desc Increment the object id for the menu.
///@param incr

with (obj_ObjectCreator) {
	current_id += argument0;
	if (current_id < 0) current_id = nGAME_OBJECTS + current_id
	current_id = current_id % nGAME_OBJECTS;

	sprite_index = object_get_sprite(current_object);
}