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

if(global.powerup)
{
	speed = 0.2;
	sprite_index = spr_scared_ghost_1;
	alarm[0] = game_get_speed(gamespeed_fps) * 2;
}

with(obj_blue_ghost)
{
	if(place_snapped(8,8))
	{
		if(direction == 0 || direction == 180)
		{
			var _directions = [90, 270];

            var _random = irandom(1);
			
			switch(_directions[_random])
			{
				case 90:
					if(!place_meeting(x, y-16, col_objects))
					{
						direction = 90;
						sprite_index = spr_blue_ghost_2;		
					}
					
					break;
					
				case 270:
					if(!place_meeting(x, y+16, col_objects))
					{
						direction = 270;
						sprite_index = spr_blue_ghost_3;	
					}
					
					break;
			}
		}
		else if (direction == 90 || direction == 270)
		{
			var _directions = [0, 180];

            var _random = irandom(1);
			
			switch(_directions[_random])
			{
				case 0:
					if(!place_meeting(x+16, y, col_objects))
					{
						direction = 0;
						image_xscale = 1;
						sprite_index = spr_blue_ghost_1;		
					}
					break;
					
				case 180:
					if(!place_meeting(x-16, y, col_objects))
					{
						direction = 180
						image_xscale = -1;
						sprite_index = spr_blue_ghost_1;		
					}
					
					break;
			}
		}
	}
}


