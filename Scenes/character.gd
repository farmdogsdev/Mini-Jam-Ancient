# adapted from https://kidscancode.org/godot_recipes/4.x/2d/grid_movement/index.html
extends CharacterBody2D

var tile_size = 112
var screen_size
var speed = 400
var moving = false

func _ready():
	screen_size = get_viewport_rect().size
	position = Vector2(tile_size, tile_size)
			

func get_input():
	velocity = Vector2()
	if Input.is_action_pressed("move_right"):
		velocity.x += 1
	if Input.is_action_pressed("move_left"):
		velocity.x -= 1
	if Input.is_action_pressed("move_down"):
		velocity.y += 1
	if Input.is_action_pressed("move_up"):
		velocity.y -= 1
	velocity = velocity.normalized() * speed
	
func _physics_process(delta):
	get_input()
	move_and_slide()
	position = position.clamp(Vector2.ZERO, screen_size)
