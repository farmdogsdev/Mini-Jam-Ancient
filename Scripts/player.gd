# adapted from https://kidscancode.org/godot_recipes/4.x/2d/grid_movement/index.html
extends CharacterBody2D

var tile_size = 64
var screen_size
@export var speed = 350
var moving = false
var is_interacting = false

func _ready():
	screen_size = Vector2(32.5*tile_size,15*tile_size)
	position = Vector2(160, 230)
			

func interior_position():
	position = Vector2(6*112, 7*112)

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
	
func _physics_process(_delta):
	get_input()
	if !is_interacting:
		move_and_slide()
		position = position.clamp(Vector2.ZERO, screen_size)
