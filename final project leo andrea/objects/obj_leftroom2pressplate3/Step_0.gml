if (place_meeting(x, y, obj_leftroom2book3)){
	audio_play_sound(sd_plate, 1, 0);
	show_debug_message("geeeeeh");
	global.leftbook3correct = true;
}