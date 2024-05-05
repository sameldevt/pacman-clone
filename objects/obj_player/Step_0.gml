if(place_meeting(x+speed, y, obj_col_teleport))
{
	x = 24;
	y = 248;	
}
else if (place_meeting(x-speed, y, obj_col_teleport))
{
	x = 408;
	y = 248;	
}

show_debug_message(string(x) + " - " + string(y))

if(is_dead)
{
	speed = 0;
	return;	
}

var _key_pressed = keyboard_lastkey;

if(speed <= 0)
{
	speed = 1;	
}
switch(_key_pressed)
{
	case vk_up:
		if(!place_meeting(x, y-speed, col_objects))
		{
			direction = 90;
			image_angle = 90;
		}
		
		break;
		
	case vk_down:
		if(!place_meeting(x, y+speed, col_objects))
		{
			direction = 270;
			image_angle = 270;	
		}

		break;
		
	case vk_right:
		if(!place_meeting(x+speed, y, col_objects))
		{
			direction = 0;
			image_angle = 0;	
		}

		break;
		
	case vk_left:
		if(!place_meeting(x-speed, y, col_objects))
		{
			direction = 180;
			image_angle = 180;
		}

		break
}

switch(direction)
{
	case 90:
		if(place_meeting(x, y-speed, col_objects))
		{
			speed = 0;
		}
		
		break;
		
	case 270:
		if(place_meeting(x, y+speed, col_objects))
		{
			speed = 0;
		}
		
		break;
		
	case 0:
		if(place_meeting(x+speed, y, col_objects))
		{
			speed = 0;	
		}
		
		break;

	case 180:
		if(place_meeting(x-speed, y, col_objects))
		{
			speed = 0;
		}

		break
}


		
	