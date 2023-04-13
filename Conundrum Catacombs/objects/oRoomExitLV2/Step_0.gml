var target = rLevel_3;

if (room == rLevel_2) && place_meeting(x,y,oPlayer)
{
	target = rLevel_3;
	TransitionStart(target,sqFadeOut,sqFadeIn);
	audio_stop_all();
}
