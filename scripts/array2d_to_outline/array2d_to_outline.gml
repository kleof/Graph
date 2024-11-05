#macro GRID 30

function array2d_to_outline(_array2d) {
	var height = array_length(_array2d);
	var width = array_length(_array2d[0]);
	
	var outline = new Graph(); 
	
	for (var _y = 0; _y < height; _y++) {
		for (var _x = 0; _x < width; _x++) {
			var cell = _array2d[_y][_x];
			
			// If cell is filled, check neighbors
			if (cell != 0) {
				
				if (_x + 1 >= width or _array2d[_y][_x + 1] == 0) { // RIGHT
					var point1 = {x: (_x + 1) * GRID, y: (_y) * GRID};
					var point2 = {x: (_x + 1) * GRID, y: (_y + 1) * GRID};
					outline.add_edge(point1, point2);
				}
				if (_x - 1 < 0 or _array2d[_y][_x - 1] == 0) { // LEFT
					var point1 = {x: (_x) * GRID, y: (_y) * GRID};
					var point2 = {x: (_x) * GRID, y: (_y + 1) * GRID};
					outline.add_edge(point1, point2);
				}
				if (_y - 1 < 0 or _array2d[_y - 1][_x] == 0) { // UP
					var point1 = {x: (_x) * GRID, y: (_y) * GRID};
					var point2 = {x: (_x + 1) * GRID, y: (_y) * GRID};
					outline.add_edge(point1, point2);
				}
				if (_y + 1 >= height or _array2d[_y + 1][_x] == 0) { // DOWN
					var point1 = {x: (_x) * GRID, y: (_y + 1) * GRID};
					var point2 = {x: (_x + 1) * GRID, y: (_y + 1) * GRID};
					outline.add_edge(point1, point2);
				}
			}
			
		}
	}
	
	return outline;
}


