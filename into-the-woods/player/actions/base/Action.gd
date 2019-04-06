extends Node
class_name Action

var player:Player
var map:Map

func _find_player(node:Node):
	if node is Player:
		return node
	return _find_player(node.get_parent())

func _ready():
	player = _find_player(get_parent())
	map = get_node("/root/World/Map")

func do():
	pass