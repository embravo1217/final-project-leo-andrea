//sets player default speed when at rest
vspeed = 0;
hspeed = 0;

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