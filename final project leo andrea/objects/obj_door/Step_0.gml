//if the key is gone, and if the player is walking into the door,
//the door should disappear, "opening" it 
if(collision_circle(x, y, 130, obj_player,false,false) && global.keyPicked){
	instance_destroy(obj_door);
	audio_play_sound(doorSound, 1, 0);
}