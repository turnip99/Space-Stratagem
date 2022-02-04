if global.status != "control"
	exit;
	
planet = get_selected_planet()
if window_mouse_get_x() > x1 && window_mouse_get_y() > y1 && window_mouse_get_x() < x2 && window_mouse_get_y() < y2 && planet != noone
{
	if usable
	{
		audio_play_sound(sound, 0, false)
		if is_ship
		{
			instance_create_depth_args(planet.x, planet.y, -20, objShip, building, planet, false)
			create_ship_buttons()
		}
		else
		{
			with (planet)
			{
				buildings[num_buildings] = other.building
				num_buildings+=1
				if other.building == "City"
				{
					vp+=2
				}
			}
			if building == "Weapons Lab"
			{
				with (objBuildingButton)
				{
					if is_ship
					{
						bp = get_bp(building, planet, false)
					}
				}
			}
		}
		increment_resource("metal", global.turn, -metal_cost)
		increment_resource("fuel", global.turn, -fuel_cost)
		increment_resource("electricity", global.turn, -electricity_cost)
		global.action_points-=build_action_cost
		update_resource_costs()
	}
	else if global.cursor == "select"
	{
		audio_play_sound(sndSelect2, 0, false)
	}
}