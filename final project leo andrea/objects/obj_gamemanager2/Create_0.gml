global.leftcroc_active = false;
global.rightcroc_active = false;

global.leftbook1correct = false;
global.leftbook2correct = false;
global.leftbook3correct = false;

global.rightbook1correct = false;
global.rightbook2correct = false;
global.rightbook3correct = false;

global.player1_x = x;
global.player1_y = y;

global.player2_x = x;
global.player2_y = y;

global.tilepress_bookleft = false;
global.tilepress_bookright = false;

global.tileepress_player1 = false;
global.tilepress_player2 = false;
global.dooropen = false;

touching = true;

if !audio_is_playing(sound_bgm){
	audio_play_sound(sound_bgm,1,1);
}