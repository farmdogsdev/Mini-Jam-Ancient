# adapted from https://www.youtube.com/watch?v=eaNQkD1vX-E
extends Node2D

var json_path = "res://Assets/Dialogue/Gaia-Dialogue.json"
var speaker_name : String
var passed_vars : Array
var dialogue_options : Array
var dialogue : Array

signal dialogue_ended
signal end_dialogue

# Called when the node enters the scene tree for the first time.
func _ready():
	get_json()
	
func get_json():
	var dialogue_file = FileAccess.open(json_path, FileAccess.READ)
	dialogue = JSON.parse_string(dialogue_file.get_as_text())
