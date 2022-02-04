if global.status == "move"
{
	var stop_move = true
	with (objShip)
	{
		if mode != "wait"
		{
			stop_move = false
		}
	}
	if stop_move
	{
		if global.attacking
		{
			global.status = "battle"
			attack()
		}
		else
		{
			global.status = "control"
			select(global.moving_planet)
		}
	}
}

global.tooltip = false
with (objBuildingButton)
{
	 if window_mouse_get_x() > x1 && window_mouse_get_y() > y1 && window_mouse_get_x() < x2 && window_mouse_get_y() < y2
	 {
		 global.tooltip = true
	 }
}