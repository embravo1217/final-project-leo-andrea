if (global.collision_player1 = true && global.collision_player2 = true){
	global.dooropen = true;
	audio_play_sound(sound_door, 1, 0);
	global.collision_player1 = false;
	global.collision_player2 = false;
}

if (global.door1_active = true && global.door2_active = true){
	room_goto_next();
}