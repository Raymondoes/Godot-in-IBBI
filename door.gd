extends Area2D

@export blackout var target_scene

func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _input(event):
	if event.is_action_pressed("ui_accept"):
		print(get_overlapping_bodies().size())
