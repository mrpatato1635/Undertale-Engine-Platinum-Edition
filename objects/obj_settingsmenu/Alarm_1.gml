if (weather == 1)
    weathermusic = audio_play_sound(mus_options_winter, 0, true);

if (weather == 2 || weather == 4)
    weathermusic = audio_play_sound(mus_options_fall, 0, true);

if (weather == 3)
    weathermusic = audio_play_sound(mus_options_summer, 0, true);