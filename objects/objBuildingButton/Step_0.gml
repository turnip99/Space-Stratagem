planet = get_selected_planet()
if planet == noone
{
	instance_destroy()
}
else
{
	if get_resource("metal", global.turn) >= metal_cost && get_resource("fuel", global.turn) >= fuel_cost
	&& get_resource("electricity", global.turn) >= electricity_cost && global.action_points >= build_action_cost
	&& (planet.num_buildings < planet.max_buildings || is_ship) && global.cursor == "select"
	{
		usable = true
	}
	else
	{
		usable = false
	}
}
