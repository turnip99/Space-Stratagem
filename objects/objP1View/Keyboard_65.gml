if global.turn != 1
	exit
limit = camera_get_view_border_x(view_camera[0])
if x > limit
	x-=20
else
	x = limit