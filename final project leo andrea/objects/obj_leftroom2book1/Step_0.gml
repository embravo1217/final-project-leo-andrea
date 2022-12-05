//picking up object (wip code)
if(collision_circle(x,y,30,obj_player1,false,false) and (book_picked_up == false) and (keyboard_check_pressed(vk_lshift))){
	book_picked_up = true;
	}
else{
	if((book_picked_up) and (keyboard_check_pressed(vk_lshift))){
		obj_leftroom2book1.y = global.player1_y + 20;
		book_picked_up = false;
	} 
}

if(book_picked_up == true){
	obj_leftroom2book1.x = global.player1_x + 10; 
	obj_leftroom2book1.y = global.player1_y - 10;
}