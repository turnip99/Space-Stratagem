function get_planet_sprite() {
	switch (type)
	{
		case "gas":
			return sprGasPlanet
		case "rock":
			return sprRockPlanet
		case "water":
			return sprWaterPlanet
		case "terrestrial":
			return sprTerrestrialPlanet
		case "metropolis":
			return sprMetropolisPlanet
	}


}
