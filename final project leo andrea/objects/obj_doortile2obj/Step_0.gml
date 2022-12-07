//step on tile

//if(place_meeting(x, y, obj_player2)) {
//	global.tilepress_player2 = true;
//	sprite_index = spr_tilepressed;
//} else {
//	global.tilepress_player2 = false;
//	sprite_index = spr_tile;
//}

if (place_meeting (x, y, obj_rightroom2book1)) | (place_meeting (x, y, obj_rightroom2book2)) | (place_meeting (x, y, obj_rightroom2book3)){
	global.tilepress_bookright = true;
	sprite_index = spr_tilepressed;
} else {
	global.tilepress_bookright = false;
	sprite_index = spr_tile;
}