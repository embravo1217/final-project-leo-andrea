if (place_meeting(x, y, obj_leftroom2book2)){
	audio_play_sound(sd_plate, 1,0);
	show_debug_message("guoooooh");
	global.leftbook2correct = true;
}