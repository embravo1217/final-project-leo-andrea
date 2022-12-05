//picking up object (wip code)
if(collision_circle(x,y,130,obj_player2,false,false) and (book_picked_up == false) and (keyboard_check_pressed(vk_space))){
	book_picked_up = true;
	}
else{
	if((book_picked_up) and (keyboard_check_pressed(vk_space))){
		obj_rightroom2book1.y = global.player2_y + 20;
		book_picked_up = false;
	} 
}

if(book_picked_up == true){
	obj_rightroom2book1.x = global.player2_x + 10; 
	obj_rightroom2book1.y = global.player2_y - 10;
}