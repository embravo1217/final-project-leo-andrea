/*
3 pressure plates
on left side: -> lowest to highest
on right side <- highest to lowest
when books in correct order, door in the wall opens

if (place_meeting (x, y, obj_booklow1)) && etc for 2 other books {
left_active = true;
	if (left_active = true && right_active = true){
	instance_destroy (obj_walldoor);
	}
}
*/
if (global.leftbook1correct == true && global.leftbook2correct == true && global.leftbook3correct == true){
	global.leftcroc_active = true;
}

if (global.rightbook1correct == true && global.rightbook2correct == true && global.rightbook3correct == true){
	global.rightcroc_active = true;
}

if (global.leftcroc_active == true && global.rightcroc_active == true){
	if (touching = false){
		audio_play_sound(sound_correct, 1,0);
		touching = true;
	}
	instance_destroy (obj_walldoor);
}

if (global.tilepress_bookleft = true & global.tilepress_bookright = true & global.tileepress_player1 = true & global.tilepress_player2 = true){
	global.dooropen = true
}

if (global.door1_active == true && global.door2_active == true){
	room_goto_next();
}

/*for (i = 0; i < 9; i+=1){
	var lefttiles = obj_icetile;
	ds_list_add(left_tiles, lefttiles);
}

for( i = 0; i <10; i++){
	if (!left_tiles[|i].pressed){
		show_debug_message("AHHHH");
		//global.allpressed = false;
	}
}

if (global.allpressed = true){
	//door open
}

*/