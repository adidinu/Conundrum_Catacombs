var target = rLevel_1;

if (room == rMainMenu) && place_meeting(x,y,oPlayer)
{
	target = rLevel_1;
	TransitionStart(target,sqFadeOut,sqFadeIn);
	audio_stop_all();
}
