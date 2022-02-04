function get_random_planet_location() {
	switch (global.map_size)
	{
		case "small":
			var min_x = 550
			var min_y = 200
			break;
		case "medium":
			var min_x = 350
			var min_y = 160
			break;
		case "large":
			var min_x = 150
			var min_y = 120
	}

	xs = irandom_range(min_x, global.rm_width-min_x)
	ys = irandom_range(min_y, room_height-min_y)
	var num_west = 0
	var num_east = 0
	with (objPlanet)
	{
		if x < global.rm_width/2
			num_west+=1
		else
			num_east+=1
	}
	if xs < global.rm_width/2 && num_west > num_east || xs > global.rm_width/2 && num_east > num_west
		xs = global.rm_width-xs


}
