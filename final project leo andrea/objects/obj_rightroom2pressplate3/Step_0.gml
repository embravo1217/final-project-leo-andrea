if (place_meeting(x, y, obj_rightroom2book3)){
	if (touching = false){
		audio_play_sound(sd_plate, 1,0);
		touching = true;
	}
	show_debug_message("baaaah");
	global.rightbook3correct = true;
} else{
	touching = false;
	global.rightbook3correct = false;
}