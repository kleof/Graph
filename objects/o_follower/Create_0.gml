//ps = part_system_create_layer("Instances", false);
randomize();
path_position = random(1);
show_debug_message(path_position);
path_start(Path2, 0, path_action_continue, true);

function is_close_to(_num, _goal, _margin) {
	return abs(_num - _goal) < _margin;
}

stop_point = .5;
