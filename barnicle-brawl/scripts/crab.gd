extends CharacterBody2D
var canplay = false
var speed = 400

func chosenplayer():
	if global.chosenplayer == "crab":
		canplay = true
	else:
		collision_layer = false
		
		
func get_input():
	if canplay:
		var input_direction = Input.get_vector("left", "right", "up", "down")
		velocity = input_direction * speed
	
func _physics_process(delta):
	get_input()
	move_and_slide()
	chosenplayer()
	
