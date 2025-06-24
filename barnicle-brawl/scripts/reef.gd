extends Node2D

var player
var enemy
func _physics_process(delta):
	player_select()

func player_select():
	if global.chosenplayer == "swordfish":
		$swordfish.visible = true
	else:
		$swordfish.visible = false
	if global.chosenplayer == "octopus":
		$octopus.visible = true
	else:
		$octopus.visible = false
	if global.chosenplayer == "crab":
		$crab.visible = true
	else:
		$crab.visible = false
		
