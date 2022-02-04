function get_building_sound() {
	var building = argument[0]
	switch (building)
	{
		case "Mine":
			return sndMine;
		case "Fuel Plant":
			return sndFuelPlant;
		case "Electrical Generator":
			return sndElectricalGenerator;
		case "City":
			return sndCity;
		case "Weapons Lab":
			return sndLab;
		case "Planetary Defence":
			return sndDefence;
		case "Scouter":
			return sndBuildScouter;
		case "Fighter":
			return sndBuildFighter;
		case "Cruiser":
			return sndBuildCruiser;
		case "Bomber":
			return sndBuildBomber;
		case "Harvester":
			return sndBuildHarvester;
		case "Carrier":
			return sndBuildCarrier;
	}


}
