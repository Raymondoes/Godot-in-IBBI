extends Area2D

func _on_input_event(viewport: Node, event: InputEvent, shape_idx: int):
	var anim = $AnimatedSprite2D
	if event is InputEventMouseButton and event.pressed:
		if event.button_index == MOUSE_BUTTON_LEFT:
			anim.play("dead")
