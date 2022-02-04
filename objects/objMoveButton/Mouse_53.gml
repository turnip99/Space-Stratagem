if global.status != "control"
	exit;
if global.status != "control"
	exit;
if window_mouse_get_x() > x1 && window_mouse_get_y() > y1 && window_mouse_get_x() < x2 && window_mouse_get_y() < y2
{
	if usable
	{
		audio_play_sound(sndSelect1, 0, false)
		if global.cursor == "select"
		{
			set_cursor("move")
		}
		else
		{
			set_cursor("select")
		}
	}
	else
	{
		audio_play_sound(sndSelect2, 0, false)
	}
}