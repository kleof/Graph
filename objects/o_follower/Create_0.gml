ps = part_system_create_layer("Instances", false);

prevx = mouse_x;
prevy = mouse_y;


arr = [[1,1,0],
	   [0,1,1],
	   [1,1,1],
	   [0,1,0],
	   [0,1,1]];
 
outline = array2d_to_outline(arr);

path_set_closed(outline, false);
path_set_kind(outline, 1);
