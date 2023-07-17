if ( global.default_player.y > y + sprite_height/2 )
{
	depth = global.default_player.depth + 1 // appear in frnt of player
}
else
{
	depth = global.default_player.depth + 1 // appear behind player
}