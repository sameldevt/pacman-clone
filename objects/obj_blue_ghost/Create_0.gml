speed = 1;
isdead = false;

//instance_create_layer(x, y, "Instances", obj_enemy_view);

col_objects = [obj_wall_border,
				obj_wall_curve,
				obj_wall_four_intersection,
				obj_wall_side,
				obj_wall_side_curve,
				obj_wall_straight,
				obj_wall_three_intersection,
				obj_wall_three_side_intersection,
				obj_wall_side_plus_curve,
				obj_wall_half,
				obj_ghost_door];
				
direction = 0;

ghost_sprites = [spr_blue_ghost_1, spr_blue_ghost_2, spr_blue_ghost_3];
eye_sprites = [spr_ghost_eye_hzt, spr_ghost_eye_up, spr_ghost_eye_down];

function follow_player()
{
	
}

