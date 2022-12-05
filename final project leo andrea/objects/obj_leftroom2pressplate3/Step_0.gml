if (place_meeting(x, y, obj_leftroom2book3)){
	if (touching = false){
		audio_play_sound(sd_plate, 1,0);
		touching = true;
	}
	show_debug_message("geeeeeh");
	global.leftbook3correct = true;
} else {
	touching = false;
	global.leftbook3correct = false;
}