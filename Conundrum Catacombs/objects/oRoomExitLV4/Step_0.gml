var target = rLevel_5;

if (room == rLevel_4) && place_meeting(x,y,oPlayer)
{
	target = rLevel_5;
	TransitionStart(target,sqFadeOut,sqFadeIn);
	audio_stop_all();
}
