extends Area2D

signal did_touch

func _on_input_event(_viewport: Node, event: InputEvent, _shape_idx: int) -> void:
	if event is InputEventScreenTouch and event.is_pressed():
		print("touch")
		emit_signal("did_touch")
