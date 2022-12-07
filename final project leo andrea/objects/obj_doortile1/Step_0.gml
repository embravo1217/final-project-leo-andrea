//step on tile

if(place_meeting(x, y, obj_player1)) {
	global.tilepress_player1 = true;
} else {
	global.tilepress_player1 = false;
}

if (place_meeting (x, y, obj_leftroom2book1)) | (place_meeting (x, y, obj_leftroom2book2)) | (place_meeting (x, y, obj_leftroom2book3)){
	global.tilepress_bookleft = true;
} else {
	global.tilepress_bookleft = false;
}