//draw_self();

var arr = [[1,1,0],
		   [0,1,1],
		   [0,1,1]];
		   
var outline = array2d_to_outline(arr);
var points_keys = struct_get_names(outline.nodes);
var points = [];

for (var i = 0; i < array_length(points_keys); i++) {
    var p = outline.nodes[$ points_keys[i]].data;
	array_push(points, p);
}

for (var i = 0; i < array_length(points); i++) {
	var p = points[i];
    draw_circle(p.x + 200, p.y + 200, 3, false);
}

