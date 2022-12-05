if (place_meeting(x, y, obj_rightroom2book2)){
	audio_play_sound(sd_plate, 1, 0);
	show_debug_message("baaaah");
	global.rightbook2correct = true;
}