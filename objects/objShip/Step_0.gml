if mode == "wait"
{
	max_roam = get_max_roam(planet.size)
	if distance_to_point(planet.x, planet.y) > max_roam
	{
		rot = irandom_range(-max_rot, max_rot)
		angle = angle_difference(dir, point_direction(x, y, planet.x, planet.y))
		if angle > 0
			dir-=irandom(5)
		else
			dir+=irandom(5)
	}
	else
	{
		if random(150) < 1
		{
			rot = irandom_range(-max_rot, max_rot)
		}
		dir+=rot
	}
	if ship == "Scouter"
		motion_set(dir, 2)
	else if ship == "Fighter" || ship == "Bomber"
		motion_set(dir, 1.5)
	else
		motion_set(dir, 1)
}
else
{
	max_roam = get_max_roam("large")+65
	motion_set(dir, spd)
	if distance_to_point(planet.x, planet.y) < max_roam
	{
		mode = "wait"
	}
}