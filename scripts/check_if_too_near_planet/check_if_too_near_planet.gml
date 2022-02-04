function check_if_too_near_planet() {
	xs = argument[0]
	ys = argument[1]
	with (objPlanet)
	{
		if distance_to_point(other.xs, other.ys) < 270
		{
			return true
		}
	}
	return false


}
