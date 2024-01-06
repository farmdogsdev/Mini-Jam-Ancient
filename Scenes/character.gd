# adapted from https://kidscancode.org/godot_recipes/4.x/2d/grid_movement/index.html
extends Area2D

var tile_size = 112
var screen_size
var moving = false

var inputs = {"move_right": Vector2.RIGHT,
			"move_left": Vector2.LEFT,
			"move_up": Vector2.UP,
			"move_down": Vector2.DOWN}

func _ready():
	screen_size = get_viewport_rect().size
	position = Vector2(tile_size, tile_size)

func _unhandled_input(event):
	for dir in inputs.keys():
		while event.is_action_pressed(dir):
			move(dir)
			
func move(dir):
	if moving:
		return
	position += inputs[dir] * tile_size/2
	position = position.clamp(Vector2.ZERO, screen_size)

func _process(delta):
	pass
	
