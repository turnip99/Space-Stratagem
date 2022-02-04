with (objPlanet)
{
	for (var i = 0; i < array_length_1d(linked); i++)
	{
		if linked[i] != ""
		{
			if selected || linked[i].selected
			{
				draw_set_colour(c_red)
			}
			else
			{
				if team == linked[i].team && team != 0
				{
					if team == 1
					{
						draw_set_colour(get_team_colour(1))
					}
					else
					{
						draw_set_colour(get_team_colour(2))
					}
				}
				else
				{
					draw_set_colour(c_ltgray)
				}
			}
			if (((global.turn_count < global.initial_turns+1 && global.turn == 2) || (global.turn_count < global.initial_turns+2 && global.turn == 1)) && ((linked[i].team == 1 && team == 2) || (linked[i].team == 2 && team == 1)))
			{
				draw_set_alpha(0.1)
			}
			draw_line_width(x, y, linked[i].x, linked[i].y, 4)
			draw_set_alpha(1)
		}
	}
}