extends CharacterBody2D

func _ready():
	$swordani.flip_h = true
	
func _physics_process(delta: float) -> void:
	_ready()
	
