if global.status != "control"
	exit;

if window_mouse_get_x() < 1300
{
	var moving = false
	with (objPlanet)
	{
		if global.cursor == "select" && !moving
		{
			if collision_point(mouse_x, mouse_y, self, true, false) && point_distance(x, y, mouse_x, mouse_y) < radius && !selected && team == global.turn
			{
				select(self)
			}
			else
			{
				selected = false
			}
		}
		else if collision_point(mouse_x, mouse_y, self, true, false) && point_distance(x, y, mouse_x, mouse_y) < radius && get_if_valid_target(self)
		{
			audio_play_sound(sndMove, 0, false)
			set_cursor("select")
			moving = true
			global.action_points -= objMoveButton.ap_cost
			move(self)
			break;
		}
	}
}