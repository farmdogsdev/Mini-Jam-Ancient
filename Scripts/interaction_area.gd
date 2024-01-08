# adapted from https://www.youtube.com/watch?v=ajCraxGAeYU
extends Area2D
class_name InteractionArea

@export var action_name : String = "interact"
@export var character_name : String

var interact : Callable = func():
	pass
	
func _on_body_entered(_body):
	print("entered")
	InteractionManager.register_area(self)

func _on_body_exited(_body):
	print("exited")
	InteractionManager.unregister_area(self)
