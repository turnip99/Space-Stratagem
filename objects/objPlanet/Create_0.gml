team = global.args[0]
starting = global.args[1]
name = get_planet_name()
size = ""
type = ""
if starting
{
	size ="large"
	type = "terrestrial"
}
else
{
	size = get_planet_size()
	type = get_planet_type()
}
switch (type)
{
	case "metropolis":
		vp = 8;
		break;
	case "terrestrial":
		vp = 2;
		break;
	default:
		vp = 3;
		break;
}
switch (size)
{
	case "large":
		scale = 1;
		vp+=2
		break;
	case "medium":
		scale = 0.7;
		vp+=1
		break;
	case "small":
		scale = 0.4;
		break;
}
sprite_index = get_planet_sprite()
image_speed = 0
linked = array("")
num_linked = 0

max_buildings = get_max_buildings(size)
buildings_width = 16*max_buildings
num_buildings = 0
for (var i = 0; i < max_buildings; i++)
{
	buildings[i] = ""
}

selected = false
radius = get_radius(size)