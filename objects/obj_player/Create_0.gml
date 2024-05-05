speed = 1;
direction = 0;
xstart = 168;
ystart = 360;
global.lifes = 5;
is_dead = false;

//instance_create_layer(x, y, "Player", obj_player_view);

col_objects = [obj_wall_border,
				obj_wall_curve,
				obj_wall_four_intersection,
				obj_wall_side,
				obj_wall_side_curve,
				obj_wall_straight,
				obj_wall_three_intersection,
				obj_wall_three_side_intersection,
				obj_wall_side_plus_curve,
				obj_wall_side,
				obj_wall_half,
				obj_ghost_door];