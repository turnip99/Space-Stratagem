if mouse_x > x1 && mouse_y > y1 && mouse_x < x2 && mouse_y < y2
{
	switch (selection)
	{
		case "Small":
			selection = "Medium";
			break;
		case "Medium":
			selection = "Large";
			break;
		case "Large":
			selection = "Small";
			break;
	}
	audio_play_sound(sndSelect1, 0, false)
}