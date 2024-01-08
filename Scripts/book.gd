extends StaticBody2D

@export var character_name : String
@onready var interaction_area : InteractionArea = $InteractionArea
@onready var label = $Label
@onready var box = $DialogueBox
@onready var dialogue_manager = get_node("/root/DialogueManager")

var book_read = false

func _ready():
	interaction_area.interact = Callable(self, "_on_interact")

func _on_interact():
	box.visible = !box.visible
	if character_name == "Book 1":
		box.update_dialogue(dialogue_manager.dialogue[0]["text"])
	if character_name == "Book 2":
		box.update_dialogue(dialogue_manager.dialogue[1]["text"])
	if character_name == "Book 3":
		box.update_dialogue(dialogue_manager.dialogue[2]["text"])
	book_read = true
	print(character_name + " is now read")

func _physics_process(_delta):
	pass
 # should have some kind of movement maybe? like pacing from place to place
 # needs an ability to be interacted with for dialogue
