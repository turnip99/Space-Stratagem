function end_turn() {
	audio_play_sound(sndEndTurn, 0, false)
	global.vp_1 = 0
	global.vp_2 = 0
	with (objPlanet)
	{
		if team == 1
		{
			global.vp_1+=vp
		}
		else if team == 2
		{
			global.vp_2+=vp
		}
	}
	if global.turn == 1
	{
		if global.vp_1 == 0 || global.vp_2 == 0
		{
			room_goto(rmResults)		
		}
		else
		{
			global.turn = 2
			view_set_visible(0, false)
			view_set_visible(1, true)
		}
	}
	else
	{
		if global.turn_count == global.max_game_turns || global.vp_1 == 0 || global.vp_2 == 0
		{
			room_goto(rmResults)		
		}
		else
		{
			global.turn_count+=1
			global.turn = 1
			view_set_visible(1, false)
			view_set_visible(0, true)
		}
	}
	begin_turn()


}
