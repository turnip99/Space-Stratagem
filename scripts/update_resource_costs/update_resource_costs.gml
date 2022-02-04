function update_resource_costs() {
	if planet != noone
	{
		metal_cost = get_metal_cost(building, planet.num_buildings)
		fuel_cost = get_fuel_cost(building, planet.num_buildings)
		electricity_cost = get_electricity_cost(building, planet.num_buildings)
	}
	else
	{
		metal_cost = 0
		fuel_cost = 0
		electricity_cost = 0
	}


}
