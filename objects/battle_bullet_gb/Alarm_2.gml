image_yscale=1;
Anim_Create(id,"image_index",0,0,0,3,5);
Anim_Create(id,"_beam_scale",ANIM_TWEEN.BACK,ANIM_EASE.OUT,0,_beam_scale_default,3.5);

audio_play_sound(snd_gb_release,0,0);

var sid=audio_play_sound(snd_gb_release2,0,0);
if scale_y <= 1.999 {
	audio_sound_pitch(sid,1.20000000000000000000000002);	
}else if scale_y >= 2 {
	audio_sound_pitch(sid,0.95);	
}else if scale_y >= 3 {
	audio_sound_pitch(sid,0.875);
}

if scale_y >= 2 {
	Camera_Shake(15+scale_y*0.425,11+scale_x*0.425,1,1,1,1);
}else if scale_y <= 2 {
	Camera_Shake(8+scale_y*0.425,5+scale_x*0.425,1,1,1,1);
}
alarm[3]=6;
alarm[4]=8;
alarm[5]=time_release_stay+1;