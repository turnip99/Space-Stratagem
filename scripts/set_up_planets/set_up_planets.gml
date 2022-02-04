function set_up_planets() {
	team = 1
	get_home(team)
	instance_create_depth_args(x_home, y_home, -10, objPlanet, team, true)
	for (var i = 0; i < get_initial_planets_num(); i++)
	{
		xs = x_home+(irandom_range(200, 500))
		ys = y_home+(irandom_range(-300, 300))
		var attempts = 0
		while check_if_too_near_planet(xs, ys) && attempts < 50
		{
			xs = x_home+(irandom_range(200, 700))
			ys = y_home+(irandom_range(-450, 450))
			attempts+=1
		}
		if attempts < 50 && !check_if_too_near_planet(xs, ys)
		{
			instance_create_depth_args(xs, ys, -10, objPlanet, team, false)
		}
	}
	
	team = 2
	get_home(team)
	instance_create_depth_args(x_home, y_home, -10, objPlanet, team, true)
	for (var i = 0; i < get_initial_planets_num(); i++)
	{
		xs = x_home+(irandom_range(-200, -500))
		ys = y_home+(irandom_range(-300, 300))
		var attempts = 0
		while check_if_too_near_planet(xs, ys) && attempts < 50
		{
			xs = x_home+(irandom_range(-200, -700))
			ys = y_home+(irandom_range(-450, 450))
			attempts+=1
		}
		if attempts < 50 && !check_if_too_near_planet(xs, ys)
		{
			instance_create_depth_args(xs, ys, -10, objPlanet, team, false)
		}
	}

	for (var i = 0; i < get_number_of_extra_planets(); i++)
	{
		get_random_planet_location()
		var attempts = 0
		while check_if_too_near_planet(xs, ys) && attempts < 50
		{
			get_random_planet_location()
			attempts+=1
		}
		if attempts < 50 && !check_if_too_near_planet(xs, ys)
		{
			instance_create_depth_args(xs, ys, -10, objPlanet, 0, false)
		}
	}

	with (objPlanet)
	{
		with (objPlanet)
		{
			if self != other
			{
				if distance_to_object(other) < 500 && random(1) < 0.7
				{
					var collision_list = ds_list_create();
					var num = collision_line_list(x, y, other.x, other.y, objPlanet, false, true, collision_list, false)
					if num > 0
					{
						linked[num_linked] = other;
						num_linked+=1
						other.linked[other.num_linked] = self
						other.num_linked+=1
					}
				}
		
			}
		}
		if num_linked == 0
		{
			with (objPlanet)
			{
				if self != other && !get_if_in_array(other, linked)
				{
					if distance_to_object(other) < 500
					{
						var collision_list = ds_list_create();
						var num = collision_line_list(x, y, other.x, other.y, objPlanet, false, true, collision_list, false)
						if num > 0
						{
							linked[num_linked] = other;
							num_linked+=1
							other.linked[other.num_linked] = self
							other.num_linked+=1
						}
					}
		
				}
			}
		}
	}


}
