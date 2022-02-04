ship = global.args[0]
planet = global.args[1]
from_carrier = global.args[2]
team = global.turn
sprite_index = get_building_sprite(ship, team)
bp = get_bp(ship, planet, from_carrier)
ap = get_ap(ship)
dir = irandom(360)
spd = get_ship_speed(ship)
rot = 0
mode = "wait"

switch (ship)
{
	case "Scouter":
		max_rot = 5
		break;
	case "Fighter":
		max_rot = 4
		break;
	case "Cruiser":
		max_rot = 2
		break;
	case "Bomber":
		max_rot = 4
		break;
	case "Harvester":
		max_rot = 2
		break;
	case "Carrier":
		max_rot = 2
		break;
}
