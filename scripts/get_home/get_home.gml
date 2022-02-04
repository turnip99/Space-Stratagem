function get_home() {
	var player = argument[0]
	y_home = room_height/2
	switch (global.map_size)
	{
		case "small":
			if player == 1
				x_home = 500
			else
				x_home = global.rm_width-500
			break;
		case "medium":
			if player == 1
				x_home = 300
			else
				x_home = global.rm_width-300
			break;
		case "large":
			if player == 1
				x_home = 100
			else
				x_home = global.rm_width-100
			break;
	}


}
