if global.status != "control"
	exit;
	
if !usable
{
	var alpha = 0.2
	draw_set_alpha(0.2)
}
else
{
	var alpha = 1
}

if building == "Cruiser" || building == "Harvester" || building == "Carrier"
	draw_sprite_ext(sprite, 0, x1+(x2-x1)/2, y1+(y2-y1)/2, 0.6, 0.6, 0, c_white, alpha)
else
	draw_sprite(sprite, 0, x1+(x2-x1)/2, y1+(y2-y1)/2)
draw_set_color(c_white)
draw_circle(x1+(x2-x1)/2, y1+(y2-y1)/2, 24, true)

draw_set_alpha(1)

if window_mouse_get_x() > x1 && window_mouse_get_y() > y1 && window_mouse_get_x() < x2 && window_mouse_get_y() < y2
{
	total_resource_cost = metal_cost+fuel_cost+electricity_cost
	xs = 1450-(total_resource_cost*24)/2+12
	ys = 690
	for (var i = 0; i < metal_cost; i++)
	{
		draw_sprite_ext(sprMetal, 0, xs, ys, 0.75, 0.75, 0, c_white, 1)
		xs+=24
	}
	for (var i = 0; i < fuel_cost; i++)
	{
		draw_sprite_ext(sprFuel, 0, xs, ys, 0.75, 0.75, 0, c_white, 1)
		xs+=24
	}
	for (var i = 0; i < electricity_cost; i++)
	{
		draw_sprite_ext(sprElectricity, 0, xs, ys, 0.75, 0.75, 0, c_white, 1)
		xs+=24
	}
	
	draw_set_halign(fa_center)
	draw_set_valign(fa_top)
	draw_set_font(fnUILarge)
	draw_text(1450, 710, string(building) + " (" + string(build_action_cost) + " AP)")
	draw_set_font(fnUISmall)
	draw_text_ext(1450, 745, description, 30, 280)
	if is_ship
	{
		draw_set_font(fnUIMedium)
		draw_set_colour(get_team_colour(global.turn))
		draw_text(1450, 845, "Movement cost: " + string(ap))
		draw_set_colour(c_red)
		draw_text(1450, 870, "Battle points: " + string(bp))
	}
}
