// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Battle_FlashOn(){
	battle_board.color_frame=0
    fader.alpha=1
    fader.color=0
    audio_play_sound(snd_noise,0,false)
}