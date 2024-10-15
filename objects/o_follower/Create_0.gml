ps = part_system_create_layer("Instances", false);

arr = [[1,2,3],
	   [4,5,6],
	   [7,8,9]];

//array_delete(arr, 1, 1);
column = 1;

function array2d_delete_column() {
	array_foreach(arr, method({column}, function(element, index) {
		array_delete(element, column, 1);
	}));
}

for (var i = 0; i < array_length(arr); i++) {
    show_debug_message(arr[i]);
}
	 
	 
