function get_planet_name() {
	var array_len = array_length_1d(global.planet_names)
	var name = ""
	while (name == "")
	{
		rnd = irandom(array_len-1)
		if global.planet_names[rnd] != ""
		{
			name = global.planet_names[rnd]
			global.planet_names[rnd] = ""
		}
	}
	return name


}
