function create_building_buttons() {
	with (objBuildingButton)
	{
		instance_destroy()
	}
	var type = argument[0]
	var xs = 1340
	var ys = 295
	if type == "terrestrial" || type == "rock"
	{
		instance_create_depth_args(xs, ys, -50, objBuildingButton, "Mine")
	}
	if type == "terrestrial" || type == "gas"
	{
		instance_create_depth_args(xs, ys+50, -50, objBuildingButton, "Fuel Plant")
	}
	if type == "terrestrial" || type == "water"
	{
		instance_create_depth_args(xs, ys+100, -50, objBuildingButton, "Electrical Generator")
	}
	instance_create_depth_args(xs+60, ys, -50, objBuildingButton, "City")
	instance_create_depth_args(xs+60, ys+50, -50, objBuildingButton, "Weapons Lab")
	instance_create_depth_args(xs+60, ys+100, -50, objBuildingButton, "Planetary Defence")
	instance_create_depth_args(xs+120, ys, -50, objBuildingButton, "Scouter")
	instance_create_depth_args(xs+120, ys+50, -50, objBuildingButton, "Fighter")
	instance_create_depth_args(xs+120, ys+100, -50, objBuildingButton, "Cruiser")
	instance_create_depth_args(xs+180, ys, -50, objBuildingButton, "Bomber")
	instance_create_depth_args(xs+180, ys+50, -50, objBuildingButton, "Harvester")
	instance_create_depth_args(xs+180, ys+100, -50, objBuildingButton, "Carrier")


}
