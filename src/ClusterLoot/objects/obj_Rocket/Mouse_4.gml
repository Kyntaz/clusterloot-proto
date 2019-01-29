event_inherited();

if (mode_is_test) {
	mode = (mode + 1) % 2;
	
	if (mode == 0) {
		active = false;
	}
	else if (mode == 1) {
		active = true;
	}
	
	audio_play_sound(snd_Rocket, 1, false);
}