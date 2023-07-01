if place_meeting(x,y,global.default_player)
{
	audio_play_sound(sfxClimbLadder,1,false,0.6);
	instance_destroy();
}