extends Node2D

@export var character_name : String
@onready var label = $Label
@onready var box = $DialogueBox
@onready var dialogue_manager = get_node("/root/DialogueManager")
@onready var int_manager = get_node("/root/InteractionManager")

func _ready():
	box.update_dialogue("As you tinker with the Gaia Engine’s internals, you pull a plug that is pulsing with the same green energy filling the crystal. With a sound akin to a shriek of pain, the energy within the crystal pulses outward, the crystal shattering into pieces as its lifeforce forcibly leaves its interior. Around you, green grass sprouts from the cracks in the floor, vines climb their way up the walls, and even the air itself feels fresh. This Gaia Engine, whatever it was, was created to salvage a world lost to drought… and it did, for a time. In the end, it giveth, yet also taketh away, proof that no mortal soul is worthy of taking up the mantle of a god. You’ve bandaged a deep wound on this world, and even if it scars, it will plague these lands no longer. You are no god, you are simply a savior.")
