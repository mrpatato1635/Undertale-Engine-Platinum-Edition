// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Battle_FlashOffWithAnimSoul(){
    battle_board.color_frame=c_white
    Anim_Create(battle_soul,"image_alpha",0,0,0,1,60)
    fader.alpha=0
    fader.color=0
    audio_play_sound(snd_noise,0,false)
}