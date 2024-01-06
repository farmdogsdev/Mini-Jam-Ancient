extends CharacterBody2D

var speed = 400
var moving = false
@onready var interaction_area : InteractionArea = $InteractionArea
@onready var label = $Label

func _ready():
	interaction_area.interact = Callable(self, "_on_interact")

func _on_interact():
	label.visible = !label.visible
	#this is where dialogue will go

func _physics_process(_delta):
	pass
 # should have some kind of movement maybe? like pacing from place to place
 # needs an ability to be interacted with for dialogue
