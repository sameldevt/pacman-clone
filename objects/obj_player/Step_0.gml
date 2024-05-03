var _key_pressed = keyboard_lastkey;

switch(_key_pressed)
{
	case vk_up:
		if(!place_meeting(x, y-spd, col_objects))
		{
			y-=spd;
			image_angle = 90;
		}
		break;
		
	case vk_down:
		if(!place_meeting(x, y+spd, col_objects))
		{
			y+=spd;
			image_angle = 270;
		}
		break;
		
	case vk_right:
		if(!place_meeting(x+spd, y, col_objects))
		{
			x+=spd;
			image_angle = 0;
		}
		break;
		
	case vk_left:
		if(!place_meeting(x-spd, y, col_objects))
		{
			x-=spd;
			image_angle = 180;
		}
		break
}