building = global.args[0]
sprite = get_building_sprite(building)
sound = get_building_sound(building)
description = get_building_description(building)
build_action_cost = get_build_action_cost(building)
planet = get_selected_planet()
update_resource_costs()
is_ship = is_building_ship(building)
if is_ship
{
	bp = get_bp(building, planet, false)
	ap = get_ap(building)
}
x1 = x
y1 = y
x2 = x+40
y2 = y+40
usable = false