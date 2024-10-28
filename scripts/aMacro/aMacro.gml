#macro ps_pixels global.ps_1

ps_pixels = part_system_create();
//part_system_draw_order(_ps, true);


global._ptype1 = part_type_create();
part_type_sprite(global._ptype1, Sprite1, false, true, false)
part_type_size(global._ptype1, 0.5, 1, 0, 0);
part_type_scale(global._ptype1, 1, 1);
part_type_speed(global._ptype1, 0.7, 0.3, 0, 0);
part_type_direction(global._ptype1, 0, 359, 0, 6);
part_type_gravity(global._ptype1, 0, 270);
part_type_orientation(global._ptype1, 0, 0, 0, 0, false);
part_type_colour3(global._ptype1, $FFFF00, $FFFFFF, $FFFFFF);
part_type_alpha3(global._ptype1, 1, 1, 0);
part_type_blend(global._ptype1, true);
part_type_life(global._ptype1, 60, 100); //Very long time? spirraling/moving in a circle in the middle


random_set_seed(2);