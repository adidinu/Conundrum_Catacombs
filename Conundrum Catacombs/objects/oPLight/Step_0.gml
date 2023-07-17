/// @desc movve light with player

light[| eLight.X] = oPlayer.x
light[| eLight.Y] = oPlayer.y

DynamicLight();

if oLightTimer.image_xscale < 0.10 {
    if high_intensity == false {
        audio_stop_sound(sfxHeartbeat_Low_Intensity);
        audio_play_sound(sfxHeartbeat_High_Intensity, 1, true, 0.8);
        high_intensity = true;
        low_intensity = false;
    }
} else if oLightTimer.image_xscale < 0.25 {
    if low_intensity == false {
        audio_stop_sound(sfxHeartbeat_High_Intensity);
        audio_play_sound(sfxHeartbeat_Low_Intensity, 1, true, 0.8);
        low_intensity = true;
        high_intensity = false;
    }
} else {
    if high_intensity == true {
        audio_stop_sound(sfxHeartbeat_High_Intensity);
        high_intensity = false;
    }
    if low_intensity == true {
        audio_stop_sound(sfxHeartbeat_Low_Intensity);
        low_intensity = false;
    }
}



