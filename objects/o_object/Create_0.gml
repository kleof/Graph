//path1 = path_22;
path1 = path_add();

path_add_point(path1, 0, 50, 100);
path_add_point(path1, 50, 50, 100);
path_add_point(path1, 50, 0, 100);
path_add_point(path1, 100, 0, 100);
path_add_point(path1, 100, 100, 100);
path_add_point(path1, 0, 100, 100);

image_alpha = .03;


// TODO increase number of spawned particles and length of their random movement


repeat (35) {
	var _x, _y;
	
	var _safety_counter = 0;
	do {
		_x = irandom_range(75, 1425);
		_y = irandom_range(75, 925);
		if (_safety_counter++ > 10000) break;
	} until (collision_circle(_x, _y, 100, o_follower, false, true) == noone)
		
	if (_safety_counter++ > 10000) break;
	instance_create_layer(_x, _y, "Instances", o_follower);
}


