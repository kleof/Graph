ps = part_system_create_layer("Instances", false);

prevx = mouse_x;
prevy = mouse_y;


a = [1];
b = [3];
c = [2];

g = new Graph();


g.add_edge(a, b);
g.add_edge(a, c);

show_debug_message(g.get_node(a)._show_connections());

array_push(a, 2);

show_debug_message(g.get_node(a));

oo = {x:0};
g.add_node(oo);
oo.x = 25;

show_debug_message(g.get_node(oo));

