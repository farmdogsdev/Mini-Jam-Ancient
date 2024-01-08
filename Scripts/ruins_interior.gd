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
	if first_machine:
		machine.action_name = "destroy"
		machine_destroyed = true
	if machine_destroyed:
		machine.character_name = "Disabled Engine"
		box.visible = true
		if machine_text == 0:
			box.update_dialogue(dialogue_manager.dialogue[13]["text"])
			machine_text += 1
		if machine_text == 1:
			box.update_dialogue(dialogue_manager.dialogue[14]["text"])
			machine_text += 1
		if machine_text == 2:
			box.update_dialogue(dialogue_manager.dialogue[15]["text"])
	else:
		box.visible = !box.visible
		box.update_dialogue(dialogue_manager.dialogue[10]["text"])
		first_machine = true

func _on_table1_interact():
	box.visible = !box.visible
	box.update_dialogue(dialogue_manager.dialogue[11]["text"])
	
func _on_table2_interact():
	box.visible = !box.visible
	box.update_dialogue(dialogue_manager.dialogue[12]["text"])

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	pass
