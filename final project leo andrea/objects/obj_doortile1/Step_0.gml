//step on tile

if(place_meeting(x, y, obj_player1)) {
	global.tilepress_player1 = true;
} else {
	global.tilepress_player1 = false;
}
