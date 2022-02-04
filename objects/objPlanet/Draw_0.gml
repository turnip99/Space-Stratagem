draw_sprite_ext(sprite_index, image_index, x, y, scale, scale, 0, c_white, 1)

switch (size)
{
	case "large":
		if team == 0
			draw_y = -70
		else
			draw_y = -89
		break;
	case "medium":
		if team == 0
			draw_y = -50
		else
			draw_y = -64
		break;
	case "small":
		if team == 0
			draw_y = -31
		else
			draw_y = -39
		break;
}

if selected
	draw_set_colour(c_silver)
else
	draw_set_colour(c_black)
draw_rectangle(x-buildings_width/2, y+draw_y-16, x+buildings_width/2, y+draw_y, false)
draw_set_colour(c_white)
draw_rectangle(x-buildings_width/2, y+draw_y-16, x+buildings_width/2, y+draw_y, true)
xs = x-buildings_width/2
for (var i = 0; i < max_buildings; i++)
{
	if buildings[i] != ""
	{
		draw_sprite_ext(get_building_sprite(buildings[i]), 0, xs+9, y+draw_y-8, 0.5, 0.5, 0, c_white, 1)
	}	
	if i < max_buildings-1
	{
		xs+=16
		draw_line(xs, y+draw_y-16, xs, y+draw_y)
	}
}

draw_set_colour(c_black)
draw_rectangle(x-38, y+draw_y-36, x+8+string_width("BP: " + string(bp)), y+draw_y-17, false)

draw_set_halign(fa_center)
draw_set_valign(fa_center)
draw_set_font(fnPlanetPoints)
draw_set_colour(c_lime)
draw_text(x-20, y+draw_y-26, "VP: " + string(vp))
draw_set_colour(c_red)
draw_set_halign(fa_left)
draw_text(x+5, y+draw_y-26, "BP: " + string(bp))