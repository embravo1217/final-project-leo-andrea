player1 = instance_nearest(x, y, obj_player1);
if(collision_circle(x, y, 130, player1,false,false) && global.dooropen = true){
	global.door1_active = true;
}
