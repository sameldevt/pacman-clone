function src_ghost_direction()
{
	randomize();
	var _directions = [0, 90, 180, 270];	

	var _random = irandom(3);
	
	if(place_meeting(x+spd, y, col_objects))
	{
		direction = _directions[_random];
	}
	else if(place_meeting(x-spd, y, col_objects))
	{
		direction = _directions[_random];
	}
	else if(place_meeting(x, y+spd, col_objects))
	{
		direction = _directions[_random];
	}
	else if(place_meeting(x, y-spd, col_objects))
	{
		direction = _directions[_random];
	}
}