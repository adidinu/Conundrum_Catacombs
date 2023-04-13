var target = rLevel_2;

if (room == rLevel_1) && place_meeting(x,y,oPlayer)
{
	target = rLevel_2;
	TransitionStart(target,sqFadeOut,sqFadeIn);
	audio_stop_all();
}
