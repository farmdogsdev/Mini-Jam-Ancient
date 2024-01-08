extends CharacterBody2D

var speed = 400
var moving = false
@export var character_name : String
@onready var interaction_area : InteractionArea = $InteractionArea
@onready var label = $Label
@onready var box = $DialogueBox
@onready var dialogue_manager = get_node("/root/DialogueManager")

func _ready():
	interaction_area.interact = Callable(self, "_on_interact")

func _on_interact():
	box.visible = !box.visible
	if character_name == "Manager":
		box.update_dialogue(dialogue_manager.dialogue[3]["text"])
	elif character_name == "Friendly Researcher":
		box.update_dialogue(dialogue_manager.dialogue[4]["text"])
	elif character_name == "Hopeful Researcher":
		box.update_dialogue(dialogue_manager.dialogue[5]["text"])
	elif character_name == "Angry Researcher":
		box.update_dialogue(dialogue_manager.dialogue[6]["text"])
		
	#this is where dialogue will go

func _physics_process(_delta):
	pass
 # should have some kind of movement maybe? like pacing from place to place
 # needs an ability to be interacted with for dialogue
