if ( objPlayer.y > y + sprite_height/2 )
{
	depth = objPlayer.depth + 1 // appear in frnt of player
}
else
{
	depth = objPlayer.depth + 1 // appear behind player
}