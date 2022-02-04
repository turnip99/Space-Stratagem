function get_ship_speed() {
	var ship = argument[0]
	switch (ship)
	{
		case "Scouter":
			return 4
		case "Fighter":
			return 3.6
		case "Cruiser":
			return 3.2
		case "Bomber":
			return 3.4
		case "Harvester":
			return 2.2
		case "Carrier":
			return 2.8
	}


}
