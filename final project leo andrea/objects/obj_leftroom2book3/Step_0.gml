//picking up object (wip code)
if(collision_circle(x,y,130,obj_player1,false,false) and (book_picked_up == false) and (keyboard_check_pressed(vk_space))){
	book_picked_up = true;
	}
else{
	if((book_picked_up) and (keyboard_check_pressed(vk_space))){
		obj_leftroom2book3.y = global.player1_y + 20;
		book_picked_up = false;
	} 
}

if(book_picked_up == true){
	obj_leftroom2book3.x = global.player1_x + 10; 
	obj_leftroom2book3.y = global.player1_y - 10;
}