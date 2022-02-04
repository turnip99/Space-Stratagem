function create_ship_buttons() {
	with (objShipButton)
	{
		instance_destroy()
	}
	with (objMoveButton)
	{
		instance_destroy()
	}
	var xs = 1450
	var ys = 470
	instance_create_depth_args(xs-75, ys, -50, objShipButton, "Scouter")
	instance_create_depth_args(xs-75, ys+60, -50, objShipButton, "Fighter")
	instance_create_depth_args(xs-75, ys+120, -50, objShipButton, "Cruiser")
	instance_create_depth_args(xs+75, ys, -50, objShipButton, "Bomber")
	instance_create_depth_args(xs+75, ys+60, -50, objShipButton, "Harvester")
	instance_create_depth_args(xs+75, ys+120, -50, objShipButton, "Carrier")
	instance_create_depth(xs-130, ys+150, -50, objMoveButton)


}
