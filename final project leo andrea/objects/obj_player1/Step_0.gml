//sets player default speed when at rest
vspeed = 0;
hspeed = 0;

var prev_x = x;
var prev_y = y;


//storing x and y of this object
global.player1_x = x;
global.player1_y = y;

//picking up object (wip code)
if(collision_circle(x,y,20,obj_object,false,false) and (obj_picked_up == false) and (keyboard_check_pressed(vk_space))){
	obj_picked_up = true;
	}
else{
	if((obj_picked_up) and (keyboard_check_pressed(vk_space))){
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


//you cannot pass thru walls with this code
//if(place_meeting(x,y,obj_wall)){
//	//show_debug_message("hit wall");
//	x = prev_x;
//	y = prev_y;
//}

if global.playerPause == false {
    //movement up, down, left, and right respectively, plus collision with the wall object
    if (keyboard_check(ord("W"))) {
        vspeed = -playerspeed;
        //sprite_index = spr_playerwalkback;
        //image_xscale = 1;
    }
    if (keyboard_check(ord("S"))) {
        vspeed = playerspeed;
        //sprite_index = spr_playerwalkfront;
        //image_xscale = 1;
    }
    if (keyboard_check(ord("A"))) {
        hspeed = -playerspeed;
        //sprite_index = spr_playerwalkfleft;
        //image_xscale = 1;
    }
    if (keyboard_check(ord("D"))) {
        hspeed = playerspeed;
        //sprite_index = spr_playerwalkfright;
        //image_xscale = 1;
    }
}

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