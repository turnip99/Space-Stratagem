function get_building_description() {
	var building = argument[0]
	switch (building)
	{
		case "Mine":
			return "Increases the number of metal resource gained at the start of your turn by one.";
		case "Fuel Plant":
			return "Increases the number of fuel resource gained at the start of your turn by one.";
		case "Electrical Generator":
			return "Increases the number of electricity resource gained at the start of your turn by one.";
		case "City":
			return "Increases the victory point value of the planet by two.";
		case "Weapons Lab":
			return "Increases the battle point value of all ships built here by 15%.";
		case "Planetary Defence":
			return "Increases the battle point value of the planet by 6.";
		case "Scouter":
			return "A quick, weak ship. Most suited for taking unprotected planets.";
		case "Fighter":
			return "A fast ship with reasonable potency. Most suited for rapid attacks against a string of planets.";
		case "Cruiser":
			return "An extremely powerful ship with a high movement cost. Most suited for defending planets.";
		case "Bomber":
			return "A drone ship with devastating power. Will self-destruct in combat.";
		case "Harvester":
			return "A fragile ship that doubles the resource yield of a planet while orbiting. Stacks twice.";
		case "Carrier":
			return "A slow ship that spawns a scouter ship at the beginning of your turn."
	}


}
