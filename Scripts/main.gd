extends Node2D
var debug : bool

# Called when the node enters the scene tree for the first time.
func _ready():
	debug = true


func _input(event):
	if debug:
		$Events.text = "DEBUG - LAST ACTION: " + event.as_text()
