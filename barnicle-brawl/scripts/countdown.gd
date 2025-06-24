extends Node2D

var time_left = 120  

func _ready():
	$Label.text = str(time_left)
	$countdown_timer.start()

func _on_countdown_timer_timeout():
	time_left -= 1
	$Label.text = str(time_left)

	if time_left <= 0:
		$countdown_timer.stop()
		
