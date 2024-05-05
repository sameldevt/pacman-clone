if(!global.powerup)
{
	is_dead = true;
	global.lifes--;
	sprite_index = spr_player_dead;
	image_angle = 0;
	instance_deactivate_layer("Instances");
	alarm[1] = game_get_speed(gamespeed_fps) * 5;
}

other.isdead = true;