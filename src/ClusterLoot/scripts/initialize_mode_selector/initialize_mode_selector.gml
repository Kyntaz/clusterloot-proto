///@desc initializes the mode selector.
///@param start_mode

image_speed = 0;
game_mode = argument0;
physics_pause_enable(game_mode == 0);

image_index = game_mode;