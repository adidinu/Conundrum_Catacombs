objPlayer = instance_find(oPlayer, 0);


audio_play_sound_at(sfxBonfire, oBonfire1.x , oBonfire1.y , 0, 25, 5, 1, true, 1, 0.2);
audio_listener_orientation(0, 1, 0, 0, 0, 1);
audio_falloff_set_model(audio_falloff_exponent_distance)