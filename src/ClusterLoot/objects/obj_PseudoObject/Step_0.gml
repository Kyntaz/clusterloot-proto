follow_mouse();
if (!keyboard_check(vk_control)) move_snap(20, 20);

if keyboard_check_released( ord("S") ) {
	sell_piece(price);
	instance_destroy();
}

if (place_meeting(x, y, obj_Sell)) {
	image_blend = c_red;
}
else {
	image_blend = c_white;
}

