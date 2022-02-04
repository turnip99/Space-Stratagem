function get_electricity_cost() {
	var building = argument[0]
	var num_buildings = argument[1]
	switch (building)
	{
		case "Mine":
			if num_buildings < 4
				return 1
			else if num_buildings < 6
				return 2
			else
				return 3
		case "Fuel Plant":
			if num_buildings < 4
				return 2
			else if num_buildings < 6
				return 4
			else
				return 6
		case "Electrical Generator":
			if num_buildings < 4
				return 1
			else if num_buildings < 6
				return 2
			else
				return 3
		case "City":
			if num_buildings < 4
				return 1
			else if num_buildings < 6
				return 2
			else
				return 3
		case "Weapons Lab":
			if num_buildings < 4
				return 1
			else if num_buildings < 6
				return 2
			else
				return 3
		case "Planetary Defence":
			if num_buildings < 4
				return 2
			else if num_buildings < 6
				return 4
			else
				return 6
		case "Scouter":
			return 1;
		case "Fighter":
			return 1;
		case "Cruiser":
			return 2;
		case "Bomber":
			return 7;
		case "Harvester":
			return 3;
		case "Carrier":
			return 0;
	}


}
