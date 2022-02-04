function get_ap() {
	var ship = argument[0]
	switch (ship)
	{
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
