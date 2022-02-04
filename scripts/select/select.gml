function select() {
	var planet = argument[0]
	with (planet)
	{
		selected = true
		audio_play_sound(sndSelectPlanet, 0, false)
		create_building_buttons(type)
		create_ship_buttons()
	}


}
