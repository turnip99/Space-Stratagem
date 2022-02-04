instance_destroy()
switch (ship)
{
	case "Scouter":
		audio_play_sound(sndDestroyScouter, 0, false);
		break;
	case "Fighter":
		audio_play_sound(sndDestroyFighter, 0, false);
		break;
	case "Cruiser": case "Harvester": case "Carrier":
		audio_play_sound(sndDestroyCruiser, 0, false);
		break;
	case "Bomber":
		audio_play_sound(sndDestroyBomber, 0, false);
		break;
}