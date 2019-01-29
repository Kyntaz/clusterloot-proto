if (mode_is_test) {
	if (total_boxes <= 0) {
		audio_play_sound(snd_Clap, 1, false);
		if (obj_PlayerController.points < 100) 
			with (obj_GameModeSelector)  {
				switch_mode();
				if (mode_is_build) sprite_index = spr_TestMode;
				if (mode_is_test) sprite_index = spr_BuildMode;
				cleanup();
			}
		else room_goto(rm_End);
	}
	create_game_object(x, y + 20, obj_LootBox);
	total_boxes--;
}
alarm[0] = drip_time;