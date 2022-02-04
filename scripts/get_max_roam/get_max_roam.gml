function get_max_roam() {
	planet_size = argument[0]
	switch (planet_size)
	{
		case "small":
			return 30
		case "medium":
			return 42
		case "large":
			return 54
	}


}
