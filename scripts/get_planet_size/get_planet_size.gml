function get_planet_size() {
	large = 1
	medium = 1
	small = 1
	with (objPlanet)
	{
		if other.x < global.rm_width/2 && x < global.rm_width/2 || other.x > global.rm_width/2 && x > global.rm_width/2
		{
			if size == "small"
				other.small+=1
			else if size == "medium"
				other.medium+=1
			else if size == "large"
				other.large+=1
		}
	}
	large_ratio = 1/large
	medium_ratio = large_ratio + 1/medium
	small_ratio = medium_ratio + 1/small
	rnd = random(small_ratio)
	if rnd < large_ratio
		return "large"
	else if rnd < medium_ratio
		return "medium"
	else
		return "small"



}
