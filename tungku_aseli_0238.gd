# WARNING
# Bugs may occur since this is still a demo for the game jam at the University of IBBI

extends Node2D

@onready var label = $Label
@onready var timer = $Timer
@onready var total_time_seconds : int = 0000

func _ready():
	$Timer.start()
	
func _on_timer_timeout():
	var anim = $AnimatedSprite2D
	total_time_seconds += 1
	var minutes = int(total_time_seconds / 60)
	var seconds = total_time_seconds - minutes * 60
	
	if (total_time_seconds == 360):
		anim.play(1)
		
	$Label.text = '%02d:%02d' % [minutes, seconds]
