global.status = "control"

if global.winner != global.moving_planet.team
{
	global.moving_planet.team = global.winner
	audio_play_sound(sndVictory, 0, false)
	select(global.moving_planet)
}

global.moving_planet = noone