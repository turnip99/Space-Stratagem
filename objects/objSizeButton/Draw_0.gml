draw_set_font(fnMenuButton)
draw_set_colour(c_white)
draw_set_halign(fa_center)
draw_set_valign(fa_center)
draw_rectangle(x1, y1, x2, y2, true)
draw_text(x1+(x2-x1)/2, y1+(y2-y1)/2, selection)
draw_set_halign(fa_left)
draw_text(200, y1+(y2-y1)/2, "Map size")