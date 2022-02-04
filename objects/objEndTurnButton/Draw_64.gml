if global.status != "control"
	exit;
draw_set_font(fnUILarge)
draw_set_halign(fa_center)
draw_set_valign(fa_center)
draw_set_colour(c_gray)
draw_rectangle(x1, y1, x2, y2, true)
draw_set_colour(c_maroon)
draw_text(x1+(x2-x1)/2, y1+(y2-y1)/2, "End Turn")