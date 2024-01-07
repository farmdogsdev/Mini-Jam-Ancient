extends Node2D

@export var character_name : String
@onready var interaction_area : InteractionArea = $InteractionArea
@onready var label = $Label
@onready var box = $DialogueBox
func _ready():
	interaction_area.interact = Callable(self, "_on_interact")

func _on_interact():
	box.visible = !box.visible
		
	#this is where dialogue will go
