function get_radius() {
	planet_size = argument[0]
	switch (planet_size)
	{
		case "small":
			return 32
		case "medium":
			return 56
		case "large":
			return 80
	}


}
