if (mouse_check_button(mb_left)) {
	//part_particles_burst(ps, mouse_x, mouse_y, ps_pixels_asset);
	part_particles_create(ps_pixels, mouse_x, mouse_y, global._ptype1, 5);
	//part_particles_create(ps, mouse_x, mouse_y, global._ptype1, 5);
}


if (mouse_check_button_pressed(mb_right)) {
	var _num = path_get_number(Path2);
    var _pos = floor(random(_num));
	stop_point = (1 / _num) * _pos;
	
	var tx = path_get_point_x(Path2, _pos);
    var ty = path_get_point_y(Path2, _pos);
	show_debug_message($"{stop_point} {tx} {ty}");
	//path_end();
	x = tx;
	y = ty;
	show_debug_message($"{stop_point} {x} {y}");
	path_position = stop_point;
	
}

if (is_close_to(path_position, stop_point, .1)) {
	path_speed = 0;
}

