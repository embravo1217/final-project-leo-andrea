if (place_meeting(x, y, obj_rightroom2book1)){
	if (touching = false){
		audio_play_sound(sd_plate, 1,0);
		touching = true;
	}
	show_debug_message("baaaah");
	global.rightbook1correct = true;
}else {
	touching = false;
	global.rightbook1correct = false;
}