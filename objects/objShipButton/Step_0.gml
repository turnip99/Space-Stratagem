planet = get_selected_planet()
if planet == noone
{
	instance_destroy()
}
else
{
	if window_mouse_get_x() > down_x1 && window_mouse_get_y() > down_y1 && window_mouse_get_x() < down_x2 && window_mouse_get_y() < down_y2
	{
		dir = "down"
	}
	else if window_mouse_get_x() > up_x1 && window_mouse_get_y() > up_y1 && window_mouse_get_x() < up_x2 && window_mouse_get_y() < up_y2
	{
		dir = "up"
	}
	else
	{
		dir = ""
	}
	
	if num > 0 && global.cursor == "select"
	{
		down_usable = true
	}
	else
	{
		down_usable = false
	}
	if num < max_num && global.cursor == "select"
	{
		up_usable = true
	}
	else
	{
		up_usable = false
	}
}