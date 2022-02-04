if global.status != "control"
	exit;

if global.cursor == "select"
{
	draw_set_alpha(1)
	var alpha = 1
}
else
{
	draw_set_alpha(0.2)
	var alpha = 0.2
}

planet = get_selected_planet()

if planet != noone
{

	if ship_type == "Cruiser" || ship_type == "Harvester" || ship_type == "Carrier"
		draw_sprite_ext(sprite, 0, x-22, y, 0.6, 0.6, 0, c_white, alpha)
	else
		draw_sprite(sprite, 0, x-20, y)
	draw_set_font(fnUISmall)
	draw_set_halign(fa_left)
	draw_set_valign(fa_center)
	if max_num == 0
		draw_set_color(c_red)
	else if num == max_num
		draw_set_color(c_green)
	else
		draw_set_color(c_white)
	draw_text(x+3, y, string(num) + "/" + string(max_num))
	draw_set_color(c_white)
	if !down_usable || global.cursor != "select"
	{
		draw_set_alpha(0.2)
	}
	draw_triangle(down_x2, down_y1, down_x2, down_y2, down_x1, down_y1+(down_y2-down_y1)/2, false)
	draw_set_alpha(1)
	if !up_usable || global.cursor != "select"
	{
		draw_set_alpha(0.2)
	}
	draw_triangle(up_x1, up_y1, up_x1, up_y2, up_x2, up_y1+(up_y2-up_y1)/2, false)
	draw_set_alpha(1)
}
