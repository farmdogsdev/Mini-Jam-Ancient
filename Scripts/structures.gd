extends Node2D

@export var character_name : String
@onready var statue : InteractionArea = $StatueArea
@onready var door : InteractionArea = $DoorArea
@onready var label = $Label
@onready var box = $DialogueBox
@onready var dialogue_manager = get_node("/root/DialogueManager")

var door_locked = true
var books_read = false
var plaque_readable = false

var dialogue : String
func _ready():
	statue.interact = Callable(self, "_on_statue_interact")
	door.interact = Callable(self, "_on_door_interact")

func _on_door_interact():
		if !door_locked:
			print("changing stage")
			var world = get_parent().get_parent()
			var main = world.get_parent()
			main.change_stage()
		else:
			box.update_dialogue(dialogue_manager.dialogue[7]["text"])
	
func _translate_plaque():
	if $Book1.book_read && $Book2.book_read && $Book3.book_read:
		books_read = true
		print("all 3 books read")
	if books_read:
		plaque_readable = true
		print("plaque is now readable")
		
func _on_statue_interact():
	_translate_plaque()
	box.visible = !box.visible
	if plaque_readable:
		box.update_dialogue(dialogue_manager.dialogue[9]["text"])
		_unlock_door()
	else:
		box.update_dialogue(dialogue_manager.dialogue[8]["text"])
	
func _unlock_door():
	$TileMap.set_cell(0, Vector2(14,-2), 0, Vector2(2,1))
	$TileMap.set_cell(0, Vector2(18,-2), 0, Vector2(3,1))
	door_locked = false
	print("door is now unlocked")

func _on_interact():
	
	box.visible = !box.visible
	
	#load in appropriate dialogue for this
	#load dialogue into the box text
	#this is where dialogue will go
