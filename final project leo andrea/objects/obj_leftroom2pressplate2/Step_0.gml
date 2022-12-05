if (place_meeting(x, y, obj_leftroom2book2)){
	if (touching = false){
		audio_play_sound(sd_plate, 1,0);
		touching = true;
	}
	show_debug_message("guoooooh");
	global.leftbook2correct = true;
} else {
	touching = false;
	global.leftbook2correct = false;
}