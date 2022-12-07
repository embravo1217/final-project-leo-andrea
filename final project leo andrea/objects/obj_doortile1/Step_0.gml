//step on tile

if(place_meeting(x, y, obj_player1)) {
	show_debug_message("eee");
	global.tileepress_player1 = true;
	show_debug_message("AAAAAAAAAAAA")
	sprite_index = spr_tilepressed;
} else {
	global.tileepress_player1 = false;
	sprite_index = spr_tile;
}

if (place_meeting (x, y, obj_leftroom2book1)) | (place_meeting (x, y, obj_leftroom2book2)) | (place_meeting (x, y, obj_leftroom2book3)){
	global.tilepress_bookleft = true;
	sprite_index = spr_tilepressed;
} else {
	global.tilepress_bookleft = false;
	sprite_index = spr_tile
}