function get_initial_planets_num() {
	switch (global.map_size)
	{
		case "small":
			return 0
		case "medium":
			return 1
		case "large":
			return 2
	}


}
