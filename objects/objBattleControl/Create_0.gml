set_planet_names()

switch (global.map_size)
{
	case "small":
		global.initial_turns = 6
		break;
	case "medium":
		global.initial_turns = 8
		break
	case "large":
		global.initial_turns = 10
		break;
}

ship = "Hello"
global.rm_width = room_width - 300

surface_resize(application_surface,1600,900);

get_home(1)
instance_create_depth(x_home, y_home, 0, objP1View)
get_home(2)
instance_create_depth(x_home, y_home, 0, objP2View)
global.turn = 1

set_up_planets()

global.status = "control"
set_cursor("select")

instance_create_depth(1340, 8, -50, objEndTurnButton)

instance_create_depth_args(1530, 682, -50, objTradeButton, "metal", "fuel")
instance_create_depth_args(1530, 717, -50, objTradeButton, "metal", "electricity")
instance_create_depth_args(1530, 752, -50, objTradeButton, "fuel", "metal")
instance_create_depth_args(1530, 787, -50, objTradeButton, "fuel", "electricity")
instance_create_depth_args(1530, 822, -50, objTradeButton, "electricity", "metal")
instance_create_depth_args(1530, 857, -50, objTradeButton, "electricity", "fuel")

global.metal_1 = 3
global.metal_2 = 3
global.fuel_1 = 3
global.fuel_2 = 3
global.electricity_1 = 3
global.electricity_2 = 3

begin_turn()

global.turn_count = 1
if global.game_length == "short"
	global.max_game_turns = 15
else if global.game_length == "normal"
	global.max_game_turns = 20
else
	global.max_game_turns = 25
	
global.tooltip = false