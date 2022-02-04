function attack() {
	var attacking_planet = global.moving_planet
	var attacking_team = global.turn
	var defending_team = attacking_planet.team
	var attacking_bp = 0
	var defending_bp = attacking_planet.bp
	with (objShip)
	{
		if planet == attacking_planet
		{
			if team == attacking_team
			{
				attacking_bp+=bp
			}
		}
	}

	if defending_bp == 0
	{
		objBattleControl.alarm[0] = 5
		global.winner = attacking_team
	}
	else
	{
		objBattleControl.alarm[0] = 70
		var attacking_roll = random(power(attacking_bp, 1.55))
		var defending_roll = random(power(defending_bp, 1.55))
		if attacking_roll > defending_roll
		{
			global.winner = attacking_team
			var winning_roll = attacking_roll
			var losing_roll = defending_roll
		}
		else
		{
			global.winner = defending_team
			var winning_roll = defending_roll
			var losing_roll = attacking_roll
		}
		var win_proportion = losing_roll/winning_roll
		with (objShip)
		{
			if planet == attacking_planet && (team != global.winner || random(1) < win_proportion && random(1) > 0.07 || ship == "Bomber")
			{
				alarm[0] = irandom_range(30, 68)
			}
		}
	}


}
