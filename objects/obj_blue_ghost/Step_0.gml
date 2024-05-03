src_ghost_direction();

if(global.powerup)
{
	sprite_index = spr_scared_ghost;
	alarm[0] = game_get_speed(gamespeed_fps) * 2;
}

if(isdead)
{
	switch(direction)
	{
		case 90:
			if(!place_meeting(x, y-spd, col_objects))
			{
				y-=spd;
				sprite_index = eye_sprites[1];
			}
			break;
		
		case 270:
			if(!place_meeting(x, y+spd, col_objects))
			{
				y+=spd;
				sprite_index =  eye_sprites[2];
			}
			break;
		
		case 0:
			if(!place_meeting(x+spd, y, col_objects))
			{
				x+=spd;
				image_xscale = 1;
				sprite_index = eye_sprites[0];	
			}
			break;
		
		case 180:
			if(!place_meeting(x-spd, y, col_objects))
			{
				x-=spd;
				image_xscale = -1;
				sprite_index = eye_sprites[0];
			}
			break
		}
	return;
}

switch(direction)
{
	case 90:
		if(!place_meeting(x, y-spd, col_objects))
		{
			y-=spd;
			sprite_index = spr_blue_ghost_2;
		}
		break;
		
	case 270:
		if(!place_meeting(x, y+spd, col_objects))
		{
			y+=spd;
			sprite_index = spr_blue_ghost_3;
		}
		break;
		
	case 0:
		if(!place_meeting(x+spd, y, col_objects))
		{
			x+=spd;
			image_xscale = 1;
			sprite_index = spr_blue_ghost_1;	
		}
		break;
		
	case 180:
		if(!place_meeting(x-spd, y, col_objects))
		{
			x-=spd;
			image_xscale = -1;
			sprite_index = spr_blue_ghost_1;
		}
		break
}
