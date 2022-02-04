function get_bp() {
	var ship = argument[0]
	var planet = argument[1]
	var from_carrier = argument[2]
	var lab_mod = 1
	if !from_carrier
		lab_mod+=get_lab_num(planet)*0.15
	switch (ship)
	{
		case "Scouter":
			return 2*lab_mod;
		case "Fighter":
			return 7*lab_mod;
		case "Cruiser":
			return 18*lab_mod;
		case "Bomber":
			return 25*lab_mod;
		case "Harvester":
			return 3*lab_mod;
		case "Carrier":
			return 10*lab_mod;
	}


}
