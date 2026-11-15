# WARNING
# Bugs may occur since this is still a demo for the game jam at the University of IBBI

extends Node2D

@onready var label = $Label
@onready var timer = $Timer
@onready var total_time_seconds : int = 0000

func _ready():	
	$Timer.start()
	
func _on_timer_timeout():
	print(total_time_seconds)
	total_time_seconds += 1
	var minutes = int(total_time_seconds / 60)
	var seconds = total_time_seconds - minutes * 60
	
	if (total_time_seconds == 360):
		$Timer.timeout()
		
	$Label.text = '%02d:%02d' % [minutes, seconds]



func _on_area_2d_body_entered(body: Node2D) -> void:
	pass # Replace with function body.


func _on_area_2d_body_exited(body: Node2D) -> void:
	pass # Replace with function body.
