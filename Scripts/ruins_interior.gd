extends Node2D

@export var character_name : String
@onready var machine : InteractionArea = $MachineArea
@onready var table1 : InteractionArea = $Table1Area
@onready var table2 : InteractionArea = $Table2Area
@onready var label = $Label
@onready var box = $DialogueBox
@onready var dialogue_manager = get_node("/root/DialogueManager")

var machine_destroyed = false
var machine_text = 0
var first_machine = false

# Called when the node enters the scene tree for the first time.
func _ready():
	machine.interact = Callable(self, "_on_machine_interact")
	table1.interact = Callable(self, "_on_table1_interact") #11
	table2.interact = Callable(self, "_on_table2_interact") #12

func _on_machine_interact():
	box.update_name("Strange Machine")
	if first_machine:
		
		machine_destroyed = true
	if machine_destroyed:
		# go to end scene
		var main = get_parent()
		main.end_game()
	else:
		box.visible = !box.visible
		box.update_dialogue(dialogue_manager.dialogue[10]["text"])
		first_machine = true
		machine.action_name = "destroy"

func _on_table1_interact():
	box.update_name("Table")
	box.visible = !box.visible
	box.update_dialogue(dialogue_manager.dialogue[11]["text"])
	
func _on_table2_interact():
	box.update_name("Table")
	box.visible = !box.visible
	box.update_dialogue(dialogue_manager.dialogue[12]["text"])

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	pass
