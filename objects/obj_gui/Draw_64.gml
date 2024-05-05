draw_set_font(fnt_gui);

draw_text(40, 20, "1UP");
draw_text(30, 50, string(global.points));

draw_text(240, 20, "HIGH SCORE");
draw_text(280, 50, string(global.record));

var _life_cord_x = 40;

for(var _i = 0; _i < global.lifes; _i++)
{
	draw_sprite_stretched(spr_player_life, -1, _life_cord_x, 900, 32, 32);
	_life_cord_x += 32;
}
