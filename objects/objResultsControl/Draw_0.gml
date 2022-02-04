draw_set_font(fnMenuTitle)
draw_set_colour(c_white)
draw_set_halign(fa_center)
draw_set_valign(fa_center)
draw_text(500, 50, "Results: ")
draw_set_font(fnResultsText)
draw_set_colour(get_team_colour(1))
draw_text(300, 250, "Yellow team: ")
draw_text(700, 250, global.vp_1)
draw_set_colour(get_team_colour(2))
draw_text(300, 350, "Blue team: ")
draw_text(700, 350, global.vp_2)
draw_set_colour(c_lime)
if global.vp_1 > global.vp_2
{
	draw_rectangle_border(100, 200, 900, 300, 3)
}
else if global.vp_2 > global.vp_1
{
	draw_rectangle_border(100, 300, 900, 400, 3)
}