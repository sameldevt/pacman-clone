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

ghost_movement();