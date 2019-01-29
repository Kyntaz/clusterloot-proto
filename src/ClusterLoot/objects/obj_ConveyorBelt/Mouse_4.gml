event_inherited();

if (mode_is_test) {
	mode = (mode + 1) % 3;
	
	if (mode == 0) {
		active = false;
		image_speed = 0;
		dir = -1;
	}
	else if (mode == 1) {
		active = true;
		image_speed = 1;
		dir = 1;
	}
	if (mode == 2) {
		active = true;
		image_speed = -1;
		dir = -1;
	}
}