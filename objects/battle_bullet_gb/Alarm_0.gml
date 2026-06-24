image_alpha=1;
_intro=true
if scale_y >= 2 {
	audio_play_sound(snd_gb_charge2,0,0);
}else if scale_y <= 2 {
	audio_play_sound(snd_gb_charge,0,0);
}
alarm[1]=time_move+time_release_delay+1