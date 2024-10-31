ps = part_system_create_layer("Instances", false);

prevx = mouse_x;
prevy = mouse_y;


var a = [1];
var b = [1];

var g = new Graph();
var g2 = new Graph();

g.add_edge(a, b);
g2.add_edge(a, b);

array_push(a, 1);
show_debug_message(g.get_node([1]));
show_debug_message(struct_get_names(g.nodes));
show_debug_message(string(g) == string(g2));

array_push(g.get_node([1]).name, 8);
show_debug_message(a);
show_debug_message(b);
