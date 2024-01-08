extends ColorRect


# Called when the node enters the scene tree for the first time.
func _ready():
	pass


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	pass


func _on_start_pressed():
	get_tree().change_scene_to_file("res://Scenes/controls_screen.tscn")


func _on_options_pressed():
	$OptionsScreen.visible = true


func _on_credits_pressed():
	$CreditsScreen.visible = true
