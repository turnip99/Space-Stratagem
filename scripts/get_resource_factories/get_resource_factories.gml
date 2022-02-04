function get_resource_factories() {
	var resource = argument[0]
	var t = argument[1]
	var count = 1
	with (objPlanet)
	{
		if team == t
		{
			var num_harvesters = 0
			with (objShip)
			{
				if team == t && planet == other && ship == "Harvester"
					num_harvesters+=1
			}
			if num_harvesters > 2
				num_harvesters = 2
			for (i = 0; i < num_buildings; i++)
			{
				var building = buildings[i]
				if building == "Mine" && resource == "metal" || building == "Fuel Plant" && resource == "fuel" || building == "Electrical Generator" && resource == "electricity"
				{
					count+=(1+1*num_harvesters)
				}
			}
		}
	}
	return count


}
