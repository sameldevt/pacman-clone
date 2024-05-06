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
	sprite_index = ghost_sprites[0];
	alarm[0] = game_get_speed(gamespeed_fps) * 2;
}

with(obj_red_ghost)
{
	randomize();
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
						sprite_index = ghost_sprites[1];		
					}
					
					return;
					
				case 270:
					if(!place_meeting(x, y+16, col_objects))
					{
						direction = 270;
						sprite_index = ghost_sprites[2];	
					}
					
					return;
			}
		}
	
		if (direction == 90 || direction == 270)
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
						sprite_index = ghost_sprites[0];		
					}
					return;
					
				case 180:
					if(!place_meeting(x-16, y, col_objects))
					{
						direction = 180
						image_xscale = -1;
						sprite_index = ghost_sprites[0];			
					}
					
					return;
			}
		}
	}
}

switch(direction)
{
	case 90:
		if(place_meeting(x, y-speed, col_objects))
		{
			direction = 270;
			sprite_index = ghost_sprites[2];	
		}
		
		break;
		
	case 270:
		if(place_meeting(x, y+speed, col_objects))
		{
			direction = 90;
			sprite_index = ghost_sprites[1];
		}
		
		break;
		
	case 0:
		if(place_meeting(x+speed, y, col_objects))
		{
			direction = 180
			image_xscale = -1;
		}
		
		break;

	case 180:
		if(place_meeting(x-speed, y, col_objects))
		{
			direction = 0;
			image_xscale = 1;
		}

		break
}