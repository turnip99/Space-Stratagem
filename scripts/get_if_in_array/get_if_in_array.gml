function get_if_in_array()
{
	v = argument[0]
	arr = argument[1]
	for (j=0; j<array_length_1d(arr); j++)
	{
		if arr[j] == v
			return true
	}
	return false
}
