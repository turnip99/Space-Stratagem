if mouse_x > x1 && mouse_y > y1 && mouse_x < x2 && mouse_y < y2
{
	audio_play_sound(sndSelect2, 0, false)
	game_restart()
}