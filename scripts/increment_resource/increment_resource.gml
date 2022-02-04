function increment_resource() {
	var resource = argument[0]
	var team = argument[1]
	var num = argument[2]
	switch (resource)
	{
		case "metal":
			if team == 1
				global.metal_1+=num
			else
				global.metal_2+=num
			break;
		case "fuel":
			if team == 1
				global.fuel_1+=num
			else
				global.fuel_2+=num
			break;
		case "electricity":
			if team == 1
				global.electricity_1+=num
			else
				global.electricity_2+=num
			break;
	}


}
