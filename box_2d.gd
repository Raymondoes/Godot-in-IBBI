extends Node

# Feature will be implemented if I manage to finish it before the deadline

@onready var timer = $Timer

func _on_area_2d_input_event(viewport: Node, event: InputEvent, shape_idx: int) -> void:
	if event is InputEventMouseButton and event.pressed:
		if event.is_echo():
			$Timer.delay(2)
			
		else:
			print("yes")
			
func _on_click():
	print("Delay Test")
