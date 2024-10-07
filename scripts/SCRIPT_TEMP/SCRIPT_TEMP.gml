
function path_to_cells(_path, _cell_size) {    
	var _array = [];
    
    for (var i = 0; i < path_get_number(_path); i++)
    {
        var cell_x = path_get_point_x(_path, i) div _cell_size;
        var cell_y = path_get_point_y(_path, i) div _cell_size;
        
        array_push(_array, {cell_x, cell_y});
    }
    
	return _array;
}
