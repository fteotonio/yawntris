extends "res://Scenes/MainScenes/Piece.gd"

var initial_position = Vector2(9,-3)
var initial_next_position = Vector2(50,-1)

func _init():
	var pos0 = [Vector2(0,2),Vector2(1,2),Vector2(2,2),Vector2(3,2),Vector2(4,2)]
	var pos1 = [Vector2(3,0),Vector2(3,1),Vector2(3,2),Vector2(3,3),Vector2(3,4)]
	var pos2 = [Vector2(1,3),Vector2(2,3),Vector2(3,3),Vector2(4,3),Vector2(5,3)]
	var pos3 = [Vector2(2,1),Vector2(2,2),Vector2(2,3),Vector2(2,4),Vector2(2,5)]
	positions = [pos0,pos1,pos2,pos3]
	block_color = "WhiteBlock"
	
	wallKicks = {
		"01": [Vector2(0, 0),Vector2(-2, 0),Vector2(1, 0),Vector2(-2, -1),Vector2(1, 2)], 
		"10": [Vector2(0, 0),Vector2(2, 0),Vector2(-1, 0),Vector2(2, 1),Vector2( -1,-2)],
		"12": [Vector2(0, 0),Vector2(-1, 0),Vector2(2, 0),Vector2(-1, 2),Vector2( 2,-1)],
		"21": [Vector2(0, 0),Vector2(1, 0),Vector2(-2, 0),Vector2(1, -2),Vector2(-2, 1)],
		"23": [Vector2(0, 0),Vector2(2, 0),Vector2(-1, 0),Vector2(2, 1),Vector2(-1, -2)],
		"32": [Vector2(0, 0),Vector2(-2, 0),Vector2(1, 0),Vector2(-2, -1),Vector2(1, 2)],
		"30": [Vector2(0, 0),Vector2(1, 0),Vector2(-2, 0),Vector2(1,-2),Vector2(-2, 1)],
		"03": [Vector2(0, 0),Vector2(-1, 0),Vector2(2, 0),Vector2(-1, 2),Vector2( 2, -1)],
	}

func _ready():
	for block in get_children():
		block.get_node("AnimatedSprite").animation = block_color
