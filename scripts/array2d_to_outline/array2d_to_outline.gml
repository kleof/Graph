#macro GRID 30

function array2d_to_outline(_array2d) {
	var arr_height = array_length(_array2d);
	var arr_width = array_length(_array2d[0]);
	
	var outline_graph = new Graph();
	
	for (var _y = 0; _y < arr_height; _y++) {
		for (var _x = 0; _x < arr_width; _x++) {
			var cell = _array2d[_y][_x];
			
			// If cell is filled (not 0), check neighbors
			if (cell != 0) {
				
				if (_x + 1 >= arr_width or _array2d[_y][_x + 1] == 0) { // RIGHT
					var point1 = {x: (_x + 1) * GRID, y: (_y) * GRID};
					var point2 = {x: (_x + 1) * GRID, y: (_y + 1) * GRID};
					outline_graph.add_edge(point1, point2);
				}
				if (_x - 1 < 0 or _array2d[_y][_x - 1] == 0) { // LEFT
					var point1 = {x: (_x) * GRID, y: (_y) * GRID};
					var point2 = {x: (_x) * GRID, y: (_y + 1) * GRID};
					outline_graph.add_edge(point1, point2);
				}
				if (_y - 1 < 0 or _array2d[_y - 1][_x] == 0) { // UP
					var point1 = {x: (_x) * GRID, y: (_y) * GRID};
					var point2 = {x: (_x + 1) * GRID, y: (_y) * GRID};
					outline_graph.add_edge(point1, point2);
				}
				if (_y + 1 >= arr_height or _array2d[_y + 1][_x] == 0) { // DOWN
					var point1 = {x: (_x) * GRID, y: (_y + 1) * GRID};
					var point2 = {x: (_x + 1) * GRID, y: (_y + 1) * GRID};
					outline_graph.add_edge(point1, point2);
				}
			}
		}
	}
	
	var nodes_names = outline_graph.get_nodes_names();
	var graph_length = array_length(nodes_names);
	var current_node = outline_graph.get_node(nodes_names[0]);
	var previous_node = current_node;
	
	var outline_path = path_add();
	path_add_point(outline_path, current_node.data.x, current_node.data.y, 100);
	
	while (path_get_number(outline_path) <= graph_length) {
		var connections_names = current_node.get_connections_names();
		
		for (var i = 0; i < array_length(connections_names); i++) {
		    var connection = outline_graph.get_node(connections_names[i]);
			if (connection != previous_node) {
				var point = connection.data;
				path_add_point(outline_path, point.x, point.y, 100);
				previous_node = current_node;
				current_node = connection;
				break;
			}
		}
	}
	
	return outline_path;
}


