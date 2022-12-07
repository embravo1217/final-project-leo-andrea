if(obj_bookshelf_shake.sprite_index == spr_bookshelf_fall){
	//image_speed = 0;
	//image_index = 0;
	if !audio_is_playing(sd_bookshelf){
		audio_play_sound(sd_bookshelf,1,0);
	}
	obj_bookshelf_shake.sprite_index = spr_bookshelf_fallen;
}
