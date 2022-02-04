function update_bp() {
	with (objPlanet)
	{
		bp = 0
		for (var i = 0; i < num_buildings; i++)
		{
			if buildings[i] == "Planetary Defence"
			{
				bp+=6
			}
		}
		with (objShip)
		{
			if planet == other && mode == "wait" && team == other.team
			{
				other.bp+=bp
			}
		}
	}


}
