function get_fuel_cost() {
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
			return 0;
		case "Electrical Generator":
			return 0;
		case "City":
			return 0;
		case "Weapons Lab":
			if num_buildings < 4
				return 1
			else if num_buildings < 6
				return 2
			else
				return 3
		case "Planetary Defence":
			return 0;
		case "Scouter":
			return 1;
		case "Fighter":
			return 3;
		case "Cruiser":
			return 6;
		case "Bomber":
			return 0;
		case "Harvester":
			return 5;
		case "Carrier":
			return 5;
	}


}
