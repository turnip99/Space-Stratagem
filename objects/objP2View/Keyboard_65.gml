if global.turn != 2
	exit
limit = camera_get_view_border_x(view_camera[1])
if x > limit
	x-=20
else
	x = limit