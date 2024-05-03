global.powerup = true;
global.points+=50;
instance_destroy(other);
alarm[0] = game_get_speed(gamespeed_fps) * 2;