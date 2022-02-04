function move() {
	var target = argument[0]
	var selected = get_selected_planet()
	var scouter_num = 0
	var fighter_num = 0
	var cruiser_num = 0
	var bomber_num = 0
	var harvester_num = 0
	var carrier_num = 0
	with (objShipButton)
	{
		if num > 0
		{
			if ship_type == "Scouter"
				scouter_num = num
			else if ship_type == "Fighter"
				fighter_num = num
			else if ship_type == "Cruiser"
				cruiser_num = num
			if ship_type == "Bomber"
				bomber_num = num
			else if ship_type == "Harvester"
				harvester_num = num
			else if ship_type == "Carrier"
				carrier_num = num
		}
	}
	for (var i = 0; i < scouter_num; i++)
	{
		var ship = get_best_unmoving_ship("Scouter", selected)
		ship.mode = "move"
		ship.planet = target
		ship.dir = point_direction(selected.x, selected.y, target.x, target.y)
	}
	for (var i = 0; i < fighter_num; i++)
	{
		var ship = get_best_unmoving_ship("Fighter", selected)
		ship.mode = "move"
		ship.planet = target
		ship.dir = point_direction(selected.x, selected.y, target.x, target.y)
	}
	for (var i = 0; i < cruiser_num; i++)
	{
		var ship = get_best_unmoving_ship("Cruiser", selected)
		ship.mode = "move"
		ship.planet = target
		ship.dir = point_direction(selected.x, selected.y, target.x, target.y)
	}
	for (var i = 0; i < bomber_num; i++)
	{
		var ship = get_best_unmoving_ship("Bomber", selected)
		ship.mode = "move"
		ship.planet = target
		ship.dir = point_direction(selected.x, selected.y, target.x, target.y)
	}
	for (var i = 0; i < harvester_num; i++)
	{
		var ship = get_best_unmoving_ship("Harvester", selected)
		ship.mode = "move"
		ship.planet = target
		ship.dir = point_direction(selected.x, selected.y, target.x, target.y)
	}
	for (var i = 0; i < carrier_num; i++)
	{
		var ship = get_best_unmoving_ship("Carrier", selected)
		ship.mode = "move"
		ship.planet = target
		ship.dir = point_direction(selected.x, selected.y, target.x, target.y)
	}


	global.status = "move"
	if target.team == selected.team
	{
		global.attacking = false
	}
	else
	{
		global.attacking = true
	}
	global.moving_planet = target

	selected.selected = false



}
