if global.status != "control" || global.tooltip == true
	exit;
	
if !usable || global.cursor != "select"
{
	draw_set_alpha(0.2)
}

draw_set_colour(c_white)
draw_set_font(fnUISmall)
draw_set_halign(fa_center)
draw_set_valign(fa_center)
draw_sprite(sprite_1, 0, x1-170, y1+(y2-y1)/2)
draw_set_color(c_green)
draw_text(x1-152, y2, "3")
draw_set_colour(c_white)
draw_arrow(x1-145, y1+(y2-y1)/2, x1-55, y1+(y2-y1)/2, 10)
draw_sprite(sprite_2, 0, x1-30, y1+(y2-y1)/2)
draw_set_color(c_green)
draw_text(x1-12, y2, "1")
draw_set_colour(c_white)
draw_rectangle(x1, y1, x2, y2, true)

draw_text(x1+(x2-x1)/2, y1+(y2-y1)/2, "+")

draw_set_alpha(1)
