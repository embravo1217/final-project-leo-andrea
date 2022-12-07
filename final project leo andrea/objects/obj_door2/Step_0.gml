player2 = instance_nearest(x, y, obj_player2);
if(collision_circle(x, y, 130, player2,false,false) and global.dooropen == true){
	global.door2_active = true;
}