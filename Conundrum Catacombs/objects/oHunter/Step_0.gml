var _currentpos = path_position;
var isChasing = false;

if (point_distance(oHunter.x, oHunter.y, oPlayer.x, oPlayer.y) < 60)
    {
    if (!isChasing)
	{
        isChasing = true;
        path_end();
        on_path = false;
    }

    mp_potential_step_object(oPlayer.x, oPlayer.y, spd, oCol);
} else {
    if (isChasing) {
        isChasing = false;
        path_start(pHunterMonsterL4_1, 1, path_action_reverse, 1); // Restart the path
        path_position = _currentpos; // Reset to the previous position on the path
        on_path = true;
    }
}
