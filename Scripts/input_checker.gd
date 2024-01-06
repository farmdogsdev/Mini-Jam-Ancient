extends Node2D

enum InputType {KEYBOARD, CONTROLLER}
@export var current_input : InputType

func _input(event):
	if event is InputEventKey:
		current_input = InputType.KEYBOARD
	if event is InputEventJoypadButton:
		current_input = InputType.CONTROLLER

func get_current_input_type():
	return current_input
