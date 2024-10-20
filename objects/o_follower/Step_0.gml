var p_dir = point_direction(prevx, prevy, mouse_x, mouse_y);
//part_type_direction(global._ptype1, p_dir, p_dir, 0, 0);

if (mouse_check_button(mb_left)) {
	//part_particles_burst(ps_pixels, mouse_x, mouse_y, ps_asset);
	part_particles_create(ps_pixels, mouse_x, mouse_y, global._ptype1, 10);
	//part_particles_create(ps, mouse_x, mouse_y, global._ptype1, 5);
}



prevx = mouse_x;
prevy = mouse_y;
