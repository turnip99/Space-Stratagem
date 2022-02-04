if global.status != "control"
	exit;
	
if !usable
{
	draw_set_alpha(0.2)
}
else
{
	draw_set_alpha(1)
}

draw_set_font(fnUILarge)
draw_set_halign(fa_left)
draw_set_valign(fa_center)
draw_set_colour(c_gray)
draw_rectangle(x1, y1, x2, y2, true)
if text == "Move"
{
	draw_set_halign(fa_left)
	var total_length = string_width(text + " (" + string(ap_cost) + " AP/" + string(bp) + " BP)")
	var xs = (x1+(x2-x1)/2)-total_length/2
	
	draw_set_colour(c_maroon)
	var str = string(text) + " ("
	draw_text(xs, y1+(y2-y1)/2, str)
	xs+=string_width(str)
	
	draw_set_colour(get_team_colour(global.turn))
	str = string(ap_cost) + " AP"
	draw_text(xs, y1+(y2-y1)/2, str)
	xs+=string_width(str)
	
	draw_set_colour(c_maroon)
	str = "/"
	draw_text(xs, y1+(y2-y1)/2, str)
	xs+=string_width(str)
	
	draw_set_colour(c_red)
	str = string(bp) + " BP"
	draw_text(xs, y1+(y2-y1)/2, str)
	xs+=string_width(str)
	
	draw_set_colour(c_maroon)
	str = ")"
	draw_text(xs, y1+(y2-y1)/2, str)
	xs+=string_width(str)
}
else
{
	draw_set_halign(fa_center)
	draw_set_colour(c_lime)
	draw_text(x1+(x2-x1)/2, y1+(y2-y1)/2, text)
}

draw_set_alpha(1)