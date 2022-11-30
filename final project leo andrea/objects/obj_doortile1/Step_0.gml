//step on tile

if(collision_circle(x, y, 130, player1,false,false)) {
	global.collision_player1 = true;
} else {
	global.collision_player1 = false;
}


if(collision_circle(x, y, 130, player2,false,false)) {
	global.collision_player2 = true;
} else {
	global.collision_player2 = false;
}
