function begin_turn() {
	global.action_points = 100
	increment_resource("metal", global.turn, get_resource_factories("metal", global.turn))
	increment_resource("fuel", global.turn,  get_resource_factories("fuel", global.turn))
	increment_resource("electricity", global.turn,  get_resource_factories("electricity", global.turn))
	with (objShip)
	{
		if ship == "Carrier" && team == global.turn
		{
			instance_create_depth_args(x, y, -20, objShip, "Scouter", planet, true)
		}
	}
	with (objPlanet)
	{
		selected = false
	}
	set_cursor("select")


}
