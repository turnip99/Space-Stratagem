if global.status != "control" || global.tooltip == true
	exit;
	
if window_mouse_get_x() > x1 && window_mouse_get_y() > y1 && window_mouse_get_x() < x2 && window_mouse_get_y() < y2
{
	if usable
	{
		audio_play_sound(sndTrade, 0, false)
		increment_resource(resource_1, global.turn, -3)
		increment_resource(resource_2, global.turn, 1)
	}
	else if global.cursor == "select"
	{
		audio_play_sound(sndSelect2, 0, false)
	}
}