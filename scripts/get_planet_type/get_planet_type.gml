function get_planet_type() {
	gas = 1
	rock = 1
	water = 1
	metropolis = 1
	with (objPlanet)
	{
		if other.x < global.rm_width/2 && x < global.rm_width/2 || other.x > global.rm_width/2 && x > global.rm_width/2
		{
			if type == "gas"
				other.gas+=1
			else if type == "rock"
				other.rock+=1
			else if type == "water"
				other.water+=1
			else if type == "metropolis"
				other.metropolis+=1
		}
	}
	gas_ratio = 1/gas
	rock_ratio = gas_ratio + 1/rock
	water_ratio = rock_ratio + 1/water
	if size == "small"
		metropolis_ratio = water_ratio
	else
		metropolis_ratio = water_ratio + (1/metropolis)/1.3
	rnd = random(metropolis_ratio)
	if rnd < gas_ratio
		return "gas"
	else if rnd < rock_ratio
		return "rock"
	else if rnd < water_ratio
		return "water"
	else
		return "metropolis"



}
