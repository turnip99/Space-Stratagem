if mouse_x > x1 && mouse_y > y1 && mouse_x < x2 && mouse_y < y2
{
	global.map_size = string_lower(objSizeButton.selection)
	global.game_length = string_lower(objLengthButton.selection)
	audio_play_sound(sndSelect2, 0, false)
	room_goto(rmBattle)
}