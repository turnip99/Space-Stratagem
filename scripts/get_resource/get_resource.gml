function get_resource() {
	var resource = argument[0]
	var team = argument[1]
	switch (resource)
	{
		case "metal":
			if team == 1
				return global.metal_1
			else
				return global.metal_2
			break;
		case "fuel":
			if team == 1
				return global.fuel_1
			else
				return global.fuel_2
			break;
		case "electricity":
			if team == 1
				return global.electricity_1
			else
				return global.electricity_2
			break;
	}


}
