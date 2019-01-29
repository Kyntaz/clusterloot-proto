///@desc Initializes a pseudo object that will become a game object when dropped on the screen.
///@param game_obj
///@param price
game_obj = argument0;
price = argument1;
sprite_index = object_get_sprite(game_obj);
image_alpha = 0.5;

depth -= 20;

event_perform_object(game_obj, ev_create, 0);