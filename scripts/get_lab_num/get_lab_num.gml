function get_lab_num() {
	var planet = argument[0]
	var count = 0
	with (planet)
	{
		for (var i = 0; i < num_buildings; i++)
		{
			if buildings[i] == "Weapons Lab"
				count+=1
		}
	}
	return count


}
