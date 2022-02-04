function get_max_buildings() {
	var size = argument[0]
	switch (size)
	{
		case "large":
			return 8;
		case "medium":
			return 6;
		case "small":
			return 4;
	}


}
