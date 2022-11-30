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
	sprite_index = spr_pressureplate_down;
}

else{
	sprite_index = spr_pressureplate;
	instance_activate_object(obj_wall);
	global.walldown = false; 
}