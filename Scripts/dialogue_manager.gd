# adapted from https://www.youtube.com/watch?v=eaNQkD1vX-E
extends Node2D

var json_dialogue = JSON.new()
var speaker_name : String
var passed_vars : Array
var dialogue_options : Array

signal dialogue_ended
signal end_dialogue

# Called when the node enters the scene tree for the first time.
func _ready():
	var dialogue = JSON.parse_string(json_dialogue) #this should be a dict we can use
	if dialogue != null:
		pass
	
