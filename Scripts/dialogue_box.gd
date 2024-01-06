extends CanvasLayer


func _ready():
	$Control/NamePanel/Name.text = get_parent().character_name

func _update_dialogue(dialogue):
	$Control/DialoguePanel/Dialogue.text = dialogue
