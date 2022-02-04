draw_set_colour(c_black)
draw_rectangle(1300, 0, 1600, 900, false)

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

draw_set_colour(get_team_colour(global.turn))
draw_rectangle_border(1300, 0, 1599, 899, 3)

if global.status != "control"
	exit;

draw_set_font(fnUIExtraLarge)
draw_set_halign(fa_center)
draw_set_valign(fa_center)
if global.turn_count < global.initial_turns || global.turn_count == global.initial_turns && global.turn == 1
{
	draw_set_colour(c_lime)
	var phase = "Arms Race"
}
else if global.turn_count == global.initial_turns && global.turn == 2 || global.turn_count == global.initial_turns+1 && global.turn == 1
{
	draw_set_colour(c_orange)
	var phase = "The Catalyst"
}
else
{
	draw_set_colour(c_red)
	var phase = "Battle"
	
}
draw_text(1450, 67, string(global.turn_count) + "/" + string(global.max_game_turns) + " - " + string(phase))

//draw_set_halign(fa_center)
draw_set_colour(get_team_colour(global.turn))
draw_text(1450, 101, "Action points: " + string(global.action_points))

draw_set_halign(fa_left)

/*
draw_set_font(fnUISmall)
var opponent_turn = get_opponent_turn()
draw_set_colour(get_team_colour(opponent_turn))
draw_text(1370, 102, get_resource("metal", opponent_turn))
draw_text(1470, 102, get_resource("fuel", opponent_turn))
draw_text(1570, 102, get_resource("electricity", opponent_turn))
*/

draw_set_font(fnUISmall)
draw_set_colour(c_green)
draw_text(1370, 122, "+" + string(get_resource_factories("metal", global.turn)))
draw_text(1470, 122, "+" + string(get_resource_factories("fuel", global.turn)))
draw_text(1570, 122, "+" + string(get_resource_factories("electricity", global.turn)))

draw_set_font(fnUILarge)
draw_set_colour(get_team_colour(global.turn))

draw_sprite(sprMetal, 0, 1330, 140)
draw_text(1355, 142, get_resource("metal", global.turn))

draw_sprite(sprFuel, 0, 1430, 140)
draw_text(1455, 142, get_resource("fuel", global.turn))

draw_sprite(sprElectricity, 0, 1530, 140)
draw_text(1555, 142, get_resource("electricity", global.turn))

selected = get_selected_planet()

draw_line(1300, 170, 1600, 170)

if selected != noone
{
	with (selected)
	{
		if selected
		{
			draw_x = 1450
			draw_y = 270
			draw_set_colour(c_white)
			draw_rectangle(draw_x-buildings_width, draw_y-32, draw_x+buildings_width, draw_y, true)
			xs = draw_x-buildings_width
			for (var i = 0; i < max_buildings; i++)
			{
				if buildings[i] != ""
				{
					draw_sprite(get_building_sprite(buildings[i]), 0, xs+17, draw_y-16)
				}
				if i < max_buildings-1
				{
					xs+=32
					draw_line(xs, draw_y-32, xs, draw_y)
				}
			}

			draw_set_halign(fa_center)
			draw_set_valign(fa_center)
			draw_set_font(fnUILarge)
			draw_text(draw_x, draw_y-80, string(name) + " (" + string(type) + ")")
			draw_set_font(fnUIMedium)
			draw_set_colour(c_lime)
			draw_text(draw_x-35, draw_y-50, "VP: " + string(vp))
			draw_set_colour(c_red)
			draw_set_halign(fa_left)
			draw_text(draw_x+10, draw_y-50, "BP: " + string(bp))
		}
	}
}

draw_set_colour(get_team_colour(global.turn))
draw_line(1300, 670, 1600, 670)

/*
if global.tooltip
{
	draw_set_halign(fa_center)
	draw_set_valign(fa_top)
	draw_set_font(fnUILarge)
	draw_text(1450, 700, "Trading")
}
/*

draw_set_alpha(1)