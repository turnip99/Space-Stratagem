function instance_create_depth_args() {
	for (i = 0; i < argument_count-4; i++)
	{
		global.args[i] = argument[i+4];
	}
	instance_create_depth(argument[0], argument[1], argument[2], argument[3])


}
