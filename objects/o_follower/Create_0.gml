path = path_add();
cell_size = 32;
grid = mp_grid_create(0, 0, room_width div cell_size, room_height div cell_size, cell_size, cell_size);

mp_grid_path(grid, path, x, y, o_object.x, o_object.y, false);

//path_start(path, 3, path_action_continue, false);

arr = path_to_cells(path, cell_size);

for (var i = 0; i < path_get_number(path); i++) {
    var _cell_x = path_get_point_x(path, i) div cell_size;
    var _cell_y = path_get_point_y(path, i) div cell_size;
        
    show_debug_message($"{_cell_x} {_cell_y}");
}
