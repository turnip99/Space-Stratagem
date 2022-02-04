planet = get_selected_planet()
if planet == noone
{
	instance_destroy()
}
else
{
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
	
	usable = false
	if cruiser_num == 0 && carrier_num == 0 && harvester_num == 0
	&& bomber_num == 0 && fighter_num == 0 && scouter_num == 0
		var base_cost = 0
	else if cruiser_num == 0 && carrier_num == 0 && harvester_num == 0
	&& bomber_num == 0 && fighter_num == 0 
		var base_cost = 10
	else if cruiser_num == 0 && carrier_num == 0 && harvester_num == 0
		var base_cost = 15
	else
		base_cost = 20
	ap_cost = round(70-(global.turn_count-1)*((70-base_cost)/global.initial_turns))
	if ap_cost < base_cost
		ap_cost = base_cost
	with (objShipButton)
	{
		if num > 0
			other.usable = true
		other.ap_cost += ap_cost
	}
	if ap_cost > global.action_points
		usable = false
		
	bp = 0
	for (var i = 0; i < scouter_num; i++)
	{
		var ship = get_best_unmoving_ship("Scouter", planet)
		if ship != noone
		{
			ship.mode = "move"
			bp += ship.bp
		}
	}
	for (var i = 0; i < fighter_num; i++)
	{
		var ship = get_best_unmoving_ship("Fighter", planet)
		if ship != noone
		{
			ship.mode = "move"
			bp += ship.bp
		}
	}
	for (var i = 0; i < cruiser_num; i++)
	{
		var ship = get_best_unmoving_ship("Cruiser", planet)
		if ship != noone
		{
			ship.mode = "move"
			bp += ship.bp
		}
	}
	for (var i = 0; i < bomber_num; i++)
	{
		var ship = get_best_unmoving_ship("Bomber", planet)
		if ship != noone
		{
			ship.mode = "move"
			bp += ship.bp
		}
	}
	for (var i = 0; i < harvester_num; i++)
	{
		var ship = get_best_unmoving_ship("Harvester", planet)
		if ship != noone
		{
			ship.mode = "move"
			bp += ship.bp
		}
	}
	for (var i = 0; i < carrier_num; i++)
	{
		var ship = get_best_unmoving_ship("Carrier", planet)
		if ship != noone
		{
			ship.mode = "move"
			bp += ship.bp
		}
	}
	with (objShip)
	{
		mode = "wait"
	}
		
	if global.cursor == "select"
		text = "Move"
	else
		text = "Cancel"
}