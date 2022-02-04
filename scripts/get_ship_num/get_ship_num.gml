function get_ship_num() {
	var p = argument[0]
	var s = argument[1]
	var count = 0
	with (objShip)
	{
		if planet == p && ship == s
		{
			count+=1
		}
	}
	return count


}
