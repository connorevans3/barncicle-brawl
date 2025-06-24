extends CharacterBody2D

#variables
var canplay = false
var speed = 400


#selection
func chosenplayer():
	if global.chosenplayer == "swordfish":
		canplay = true
	else:
		collision_layer = false
		
#movement script
func get_input():
	if canplay:
		var input_direction = Input.get_vector("left", "right", "up", "down")
		velocity = input_direction * speed
	#animations
	if Input.is_action_pressed("down") or Input.is_action_pressed("up") or Input.is_action_pressed("left") or Input.is_action_pressed("right"):	
		$swordfish_ani.play("run")
	else: 
		$swordfish_ani.play("idle")
	if Input.is_action_pressed("left"):
		$swordfish_ani.flip_h = true
	elif Input.is_action_pressed("right"):
		$swordfish_ani.flip_h = false
	
	
		
func _physics_process(delta):
	get_input()
	move_and_slide()
	chosenplayer()
	
