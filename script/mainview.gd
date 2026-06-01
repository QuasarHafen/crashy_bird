extends Node2D

@onready var bird: CharacterBody2D = $Bird

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_touch_area_did_touch() -> void:
	if bird.has_method("did_touch"):
		bird.did_touch()
