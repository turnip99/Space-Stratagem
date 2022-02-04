if global.status != "control"
	exit;
	
if dir == "down"
{
	if down_usable
	{
		audio_play_sound(sndSelect1, 0, false)
		num=0
		ap_cost = num*get_ap(ship_type)
	}
	else if global.cursor == "select"
	{
		audio_play_sound(sndSelect2, 0, false)
	}
}
else if dir == "up"
{
	if up_usable
	{
		audio_play_sound(sndSelect1, 0, false)
		num=max_num
		ap_cost = num*get_ap(ship_type)
	}
	else if global.cursor == "select"
	{
		audio_play_sound(sndSelect2, 0, false)
	}
}