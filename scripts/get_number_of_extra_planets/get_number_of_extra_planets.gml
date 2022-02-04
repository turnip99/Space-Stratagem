function get_number_of_extra_planets() {
	switch (global.map_size)
	{
		case "small":
			return 10
		case "medium":
			return 16
		case "large":
			return 23
	}
	


}
