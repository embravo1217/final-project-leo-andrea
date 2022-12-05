if (place_meeting(x, y, obj_leftroom2book1)){
	audio_play_sound(sd_plate, 1, 0);
	show_debug_message("baaaah");
	global.leftbook1correct = true;
}