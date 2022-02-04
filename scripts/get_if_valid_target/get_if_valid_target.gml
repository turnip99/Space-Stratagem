function get_if_valid_target() {
	var target = argument[0]
	var selected = get_selected_planet()
	if get_if_in_array(target, selected.linked)
	&& !(((global.turn_count < global.initial_turns+1 && global.turn == 2) || (global.turn_count < global.initial_turns+2 && global.turn == 1))
	&& ((target.team == 1 && selected.team == 2) || (target.team == 2 && selected.team == 1)))
	{
		return true
	}
	else
	{
		return false
	}


}
