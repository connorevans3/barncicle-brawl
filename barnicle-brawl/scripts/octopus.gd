extends CharacterBody2D
var canplay = false
var speed = 400

func chosenplayer():
	if global.chosenplayer == "octopus":
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


var dash_timer := 0.0
var cooldown_timer := 0.0
var dash_dir := 0
