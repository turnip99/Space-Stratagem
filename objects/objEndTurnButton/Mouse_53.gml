if global.status != "control"
	exit;
if window_mouse_get_x() > x1 && window_mouse_get_y() > y1 && window_mouse_get_x() < x2 && window_mouse_get_y() < y2
{
	audio_play_sound(sndSelect1, 0, false)
	end_turn()
}