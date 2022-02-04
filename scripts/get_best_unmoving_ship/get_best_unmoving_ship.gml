function get_best_unmoving_ship() {
	var s = argument[0]
	var p = argument[1]
	var highest_bp = 0
	var highest_obj = noone
	with (objShip)
	{
		if mode == "wait" && ship == s && planet == p
		{
			if bp > highest_bp
			{
				highest_bp = bp
				highest_obj = self
			}
		}
	}
	return highest_obj


}
