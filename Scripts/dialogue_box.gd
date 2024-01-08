extends CanvasLayer


func _ready():
	$Control/NamePanel/Name.text = get_parent().character_name

func update_dialogue(dialogue):
	$Control/DialoguePanel/Dialogue.text = dialogue


func _on_option_1_pressed():
	pass # Replace with function body.


func _on_option_2_pressed():
	pass # Replace with function body.
