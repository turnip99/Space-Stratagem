function get_build_action_cost() {
	var building = argument[0]
	switch (building)
	{
		case "Mine":
			return 5;
		case "Fuel Plant":
			return 5;
		case "Electrical Generator":
			return 5;
		case "City":
			return 5;
		case "Weapons Lab":
			return 10;
		case "Planetary Defence":
			return 10;
		case "Scouter":
			return 1;
		case "Fighter":
			return 3;
		case "Cruiser":
			return 10;
		case "Bomber":
			return 6;
		case "Harvester":
			return 8;
		case "Carrier":
			return 9;
	}


}
