extends StaticBody2D

@export var character_name : String
@onready var interaction_area : InteractionArea = $InteractionArea
@onready var label = $Label
@onready var box = $DialogueBox
func _ready():
	interaction_area.interact = Callable(self, "_on_interact")

func _on_interact():
	box.visible = !box.visible
		
	#this is where dialogue will go

func _physics_process(_delta):
	pass
 # should have some kind of movement maybe? like pacing from place to place
 # needs an ability to be interacted with for dialogue
