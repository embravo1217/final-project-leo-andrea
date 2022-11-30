if (global.tilepress_player1 == true && global.tilepress_player2 == true){
	show_debug_message("bonked");
	global.dooropen = true;
	show_debug_message("that bitch is open");
	soundplay = true;
	global.tilepress_player1 = false;
	global.tilepress_player2 = false;
}

/*if (!audio_is_playing(sound_door) && soundplay = true)
		{
		audio_play_sound(sound_door, 1, 0);
		soundplay = false;
}*/

if (global.door1_active == true && global.door2_active == true){
	room_goto_next();
}