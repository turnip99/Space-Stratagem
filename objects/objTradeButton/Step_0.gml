if global.status != "control"
	exit;

if get_resource(resource_1, global.turn) >= 3 && global.cursor == "select" && global.tooltip == false
{
	usable = true
}
else
{
	usable = false
}
