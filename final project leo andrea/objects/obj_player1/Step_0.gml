//sets player default speed when at rest
vspeed = 0;
hspeed = 0;
var prev_x = x;
var prev_y = y;

var face_up = false;
var face_right = false;
var face_left = false;
var face_idle = false;


//basic movement 
if (keyboard_check(ord("W"))){
	y -= walk_speed;
	face_up = true;
	directions = 1;
}
if (keyboard_check(ord("S"))){
	y += walk_speed;
	face_idle = true;
	directions = 2;
}
if (keyboard_check(ord("A"))){
	x -= walk_speed;
	face_left = true;
	directions = 3;
}
if (keyboard_check(ord("D"))){
	x += walk_speed;
	face_right = true;
	directions = 4;
}

//walking animations
if (face_up){
	sprite_index = spr_player1_up_walk;
}
else if(face_idle){
	sprite_index = spr_player1_down_walk;
}
else if(face_left){
	sprite_index = spr_player1_left_walk; 
}
else if(face_right){
	sprite_index = spr_player1_right_walk;
}
else if (directions == 1){
	sprite_index = spr_player1_up; 
}
else if (directions == 2){
	sprite_index = spr_player1_idle;
}
else if (directions == 3){
	sprite_index = spr_player1_left;
}
else if (directions == 4){
	sprite_index = spr_player1_right;
}

//interacting with bookshelf
if(collision_circle(x,y+10,50,obj_bookshelf_shake,false,false) and (bookshelf_interact == false) and (keyboard_check_pressed(vk_space))){
	bookshelf_interact = true;
	show_debug_message("interacted with bookshelf");
}
else{
	bookshelf_interact = false;
}

//storing x and y of this object
global.player1_x = x;
global.player1_y = y;

//picking up object (wip code)
if(collision_circle(x,y,130,obj_object,false,false) and (obj_picked_up == false) and (keyboard_check_pressed(vk_lshift))){
	obj_picked_up = true;
	}
else{
	if((obj_picked_up) and (keyboard_check_pressed(vk_lshift))){
		obj_object.y = global.player1_y + 20;
		obj_picked_up = false;
	} 
}

if(obj_picked_up == true){
	obj_object.x = global.player1_x + 10; 
	obj_object.y = global.player1_y - 10;
}

//placing item down. will write depending where player faces after spriting
//code physics later?

//camera following the player

//camera_set_view_pos(view_camera[0], x - camera_get_view_width(view_camera[0])/2, y - camera_get_view_height(view_camera[0])/2);


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