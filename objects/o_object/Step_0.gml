
repeat(45) {
	var pos = random(1);
	var _x = x - sprite_xoffset + path_get_x(path1, pos);
	var _y = y - sprite_yoffset + path_get_y(path1, pos);
	
	instance_create_depth(_x, _y, -1, o_object2, {owner: id});
}


x = mouse_x;
y = mouse_y;


if (mouse_wheel_up()) {
	image_angle += 90;
	path_rotate(path1, 90);
}

if (mouse_wheel_down()) {
	image_angle -= 90;
	path_rotate(path1, -90);
}

