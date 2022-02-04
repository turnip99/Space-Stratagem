if global.cursor == "select" || window_mouse_get_x() > 1300
{
	cursor_sprite = -1
	window_set_cursor(cr_default);
}
else
{
	window_set_cursor(cr_none);
	var valid_target = false
	with (objPlanet)
	{
		if collision_point(mouse_x, mouse_y, self, true, false) && point_distance(x, y, mouse_x, mouse_y) < radius && get_if_valid_target(self)
		{
			valid_target = true
		}
	}
	if valid_target
	{
		cursor_sprite = sprTargetOn
	}
	else
	{
		cursor_sprite = sprTargetOff
	}
}