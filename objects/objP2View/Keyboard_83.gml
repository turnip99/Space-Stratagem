if global.turn != 2
	exit
limit = room_height-camera_get_view_border_y(view_camera[1])
if y < limit
	y+=20
else
	y = limit