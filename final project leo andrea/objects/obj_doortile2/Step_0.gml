//step on tile

if(place_meeting(x, y, obj_player2)) {
	global.tilepress_player2 = true;
} else {
	global.tilepress_player2 = false;
}