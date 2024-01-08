extends Node2D

@export var character_name : String
@onready var label = $Label
@onready var box = $DialogueBox
@onready var dialogue_manager = get_node("/root/DialogueManager")
@onready var int_manager = get_node("/root/InteractionManager")
@onready var machine : InteractionArea = $MachineArea

var page = 1

func _ready():
	box.update_dialogue(dialogue_manager.dialogue[13]["text"])
	machine.interact = Callable(self, "_on_machine_interact2")
		
func _on_machine_interact2():
	box.update_dialogue(dialogue_manager.dialogue[14]["text"])
	machine.interact = Callable(self, "_on_machine_interact3")		

func _on_machine_interact3():
	box.update_dialogue(dialogue_manager.dialogue[15]["text"])
	$MachineArea.queue_free()
