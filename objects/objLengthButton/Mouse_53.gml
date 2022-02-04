if mouse_x > x1 && mouse_y > y1 && mouse_x < x2 && mouse_y < y2
{
	switch (selection)
	{
		case "Short":
			selection = "Normal";
			break;
		case "Normal":
			selection = "Long";
			break;
		case "Long":
			selection = "Short";
			break;
	}
	audio_play_sound(sndSelect1, 0, false)
}