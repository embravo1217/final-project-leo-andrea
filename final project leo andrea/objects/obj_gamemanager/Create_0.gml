global.tilepress_player1 = false;
global.tilepress_player2 = false;

global.dooropen = false;

soundplay = false;

if !audio_is_playing(sound_bgm){
	audio_play_sound(sound_bgm,1,1);
}