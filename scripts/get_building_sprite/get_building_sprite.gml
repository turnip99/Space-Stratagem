function get_building_sprite() {
	var building = argument[0]
	var team = global.turn
	switch (building)
	{
		case "Mine":
			return sprMine;
		case "Fuel Plant":
			return sprFuelPlant;
		case "Electrical Generator":
			return sprElectricalGenerator;
		case "City":
			return sprCity;
		case "Weapons Lab":
			return sprLab;
		case "Planetary Defence":
			return sprDefence;
		case "Scouter":
			if team == 1
				return sprScouterYellow;
			else
				return sprScouterBlue;
		case "Fighter":
			if team == 1
				return sprFighterYellow;
			else
				return sprFighterBlue;
		case "Cruiser":
			if team == 1
				return sprCruiserYellow;
			else
				return sprCruiserBlue;
		case "Bomber":
			if team == 1
				return sprBomberYellow;
			else
				return sprBomberBlue;
		case "Harvester":
			if team == 1
				return sprHarvesterYellow;
			else
				return sprHarvesterBlue;
		case "Carrier":
			if team == 1
				return sprCarrierYellow;
			else
				return sprCarrierBlue;
	}


}
