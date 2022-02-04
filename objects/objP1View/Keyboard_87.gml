if global.turn != 1
	exit
limit = camera_get_view_border_y(view_camera[0])
if y > limit
	y-=20
else
	y = limit