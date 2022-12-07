//instance_activate_object(obj_pressureplate);


//if player collides with plate
if((place_meeting(x,y+5,obj_player1)) or (place_meeting(x,y,obj_player2))){
	global.platepressed = true;

}
else if(place_meeting(x,y,obj_object)){
	global.platepressed = true;
}
else{global.platepressed = false;}



//general toggle for plate pressed
if(global.platepressed){
	global.walldown = true;
	show_debug_message("aaa");
	sprite_index = spr_pressureplate_down;
	/*if !audio_is_playing(sd_plate)
		{
		audio_play_sound(sd_plate,1,false);
	}*/
}

else{
	sprite_index = spr_pressureplate;
	instance_activate_object(obj_gate);
	global.walldown = false; 
}