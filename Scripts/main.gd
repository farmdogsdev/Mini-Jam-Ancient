extends Node2D
var debug : bool

@onready var player = $World/Entities/Player
@onready var player_world_loc = $World/Entities
@onready var interior = load("res://Scenes/ruins_interior.tscn")

# Called when the node enters the scene tree for the first time.
func _ready():
	pass
	
func _starting_cutscene():
	pass
	#have opening dialogue explaining to go talk to dude?
	
func _move_node(node, new_parent):
	node.get_parent().remove_child(node)
	new_parent.add_child(node)
	
func change_stage():
	$".".add_child(interior.instantiate())
	_move_node(player, $RuinsInterior)
	player.interior_position()
	$World/Entities.queue_free()
	$World.queue_free()
	

func _input(_event):
	pass
