///@desc Changes the image based on whether the mouse is on the object.

if (collision_point(mouse_x, mouse_y, id, false, false))
	image_index = 1;
else
	image_index = 0;