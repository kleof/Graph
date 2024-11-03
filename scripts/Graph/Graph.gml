/// @desc Graph
function Graph() constructor {
	nodes = {};
	
	static add_node = function(_name) {
		nodes[$ _name] = new Node(_name);
		
		return get_node(_name);
	}
	
	static add_edge = function(_name_a, _name_b, _distance=1) {
		if (variable_get_hash(_name_a) == variable_get_hash(_name_b)) return false; // hmmm, preventing same mutables from being added?
		
		var _node_a = add_node(_name_a);
		var _node_b = add_node(_name_b);
		
		_node_a.add_connection(_node_b, _distance);
		_node_b.add_connection(_node_a, _distance);
		
		return true;
	}
	
	static get_node = function(_name) {
		return nodes[$ _name];
	}
}

function Node(_name) constructor {
	name = _name;
	connections = {};
	
	static add_connection = function(_node, _distance=1) {	
		connections[$ _node.name] = _distance;
	}
	
}
