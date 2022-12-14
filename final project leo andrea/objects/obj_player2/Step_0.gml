
//sets player default speed when at rest
vspeed = 0;
hspeed = 0;

//storing x and y of this object
global.player2_x = x;
global.player2_y = y;

var face_up = false;
var face_right = false;
var face_left = false;
var face_idle = false;


//basic movement 
if (keyboard_check(vk_up)){
	y -= walk_speed;
	face_up = true;
	directions = 1;
}
if (keyboard_check(vk_down)){
	y += walk_speed;
	face_idle = true;
	directions = 2;
}
if (keyboard_check(vk_left)){
	x -= walk_speed;
	face_left = true;
	directions = 3;
}
if (keyboard_check(vk_right)){
	x += walk_speed;
	face_right = true;
	directions = 4;
}

//walking animations
if (face_up){
	sprite_index = spr_player2_up_walk;
}
else if(face_idle){
	sprite_index = spr_player2_down_walk;
}
else if(face_left){
	sprite_index = spr_player2_left_walk; 
}
else if(face_right){
	sprite_index = spr_player2_right_walk;
}
else if (directions == 1){
	sprite_index = spr_player2_up; 
}
else if (directions == 2){
	sprite_index = spr_player2_idle;
}
else if (directions == 3){
	sprite_index = spr_player2_left;
}
else if (directions == 4){
	sprite_index = spr_player2_right;
}


//interacting with bookshelf
if(collision_circle(x,y,100,obj_bookshelf_shake,false,false) and (bookshelf_interact == false) and (keyboard_check_pressed(vk_rshift))){
	bookshelf_interact = true;

	show_debug_message("interacted with bookshelf");
}
else{
	bookshelf_interact = false;
}
if(bookshelf_interact == true){
	if(obj_bookshelf_shake.sprite_index != spr_bookshelf_fallen){
		obj_bookshelf_shake.sprite_index = spr_bookshelf_fall;
	}
	instance_activate_object(obj_leftroom2book1);
	instance_activate_object(obj_leftroom2book2);
	instance_activate_object(obj_leftroom2book3);
	instance_activate_object(obj_rightroom2book1);
	instance_activate_object(obj_rightroom2book2);
	instance_activate_object(obj_rightroom2book3);
}

//if(obj_bookshelf_shake.sprite_index == spr_bookshelf_fall){
//	if(image_index == image_number){
//		image_speed = 0;
//		//global.bookshelfState = true;
//	}
//}

//when book falling off bookshelf animation ends, create obj on floor


//picking up object (wip code)
if(collision_circle(x,y,20,obj_object,false,false) and (obj_picked_up2 == false) and (keyboard_check_pressed(vk_space))){
	obj_picked_up2 = true;
	}
else{
	if((obj_picked_up2) and (keyboard_check_pressed(vk_space))){
		obj_object.y = global.player2_y + 20;
		obj_picked_up2 = false;
	}
}

if(obj_picked_up2 == true){
	obj_object.x = global.player2_x + 10; 
	obj_object.y = global.player2_y - 10;
}

//if global.playerPause == false {
//    //movement up, down, left, and right respectively, plus collision with the wall object
//    if (keyboard_check(vk_up)) {
//        vspeed = -playerspeed;
//        //sprite_index = spr_playerwalkback;
//        //image_xscale = 1;
//    }
//    if (keyboard_check(vk_down)) {
//        vspeed = playerspeed;
//        //sprite_index = spr_playerwalkfront;
//        //image_xscale = 1;
//    }
//    if (keyboard_check(vk_left)) {
//        hspeed = -playerspeed;
//        //sprite_index = spr_playerwalkfleft;
//        //image_xscale = 1;
//    }
//    if (keyboard_check(vk_right)) {
//        hspeed = playerspeed;
//        //sprite_index = spr_playerwalkfright;
//        //image_xscale = 1;
//    }
//}

//camera following the player

//camera_set_view_pos(view_camera[1], x - camera_get_view_width(view_camera[0])/2, y - camera_get_view_height(view_camera[0])/2);


//if global.wallWhite = true{
//    sprite_index = spr_playerfrontWhite;
// }else {
//     sprite_index = spr_playerfrontBlack;
// }


//if F is pressed, change the colours

//if keyboard_check_pressed(ord("F")){
//    audio_play_sound(sound_flip,0,0);
//    if global.wallWhite = true{
//        global.wallWhite = false;
//    }else {
//        global.wallWhite = true;
//    }
//}


// maze wall colour (temp here) 
//if global.wallWhite = true{
//    sprite_index = spr_wallWhite;
// }else {
//     sprite_index = spr_wallBlack;
// }