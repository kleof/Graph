function Graph(_save_ref=false) constructor {
	nodes = {};
	save_ref = _save_ref;
	
	static add_node = function(_name, _data=undefined) {
		nodes[$ _name] ??= new Node(_name, save_ref, _data);
		
		return nodes[$ _name];
	}
	
	static add_edge = function(_name_a, _name_b) {
		if (_name_a == _name_b) return false;
		
		var _node_a = add_node(_name_a);
		var _node_b = add_node(_name_b);
		
		_node_a.add_connection(_name_b);
		_node_b.add_connection(_name_a);
	}
}

function Node(_name, _save_ref, _data=undefined) constructor {
	name = string(_name);
	connections = {};
	
	data = _data;
	ref = undefined;
	
	if (_save_ref == true) ref = _name;
	
	static add_connection = function(_node) {
		connections[$ _node.name] ??= _node;
	}
	
}