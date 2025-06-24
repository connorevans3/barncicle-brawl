extends Node2D

var swordfish = false
var crab = false
var octopus = false
var selected = false
var player
var op
var playerchosen = false
var opchosen = false

#player select
func _on_swordfish_pressed() -> void:
	swordfish = true
	player = "swordfish"
	$swordselect.visible = true
	$crabselect.visible = false
	$octoselect.visible = false
	$effect.playing = true

func _on_octopus_pressed() -> void:
	octopus = true
	player = "octopus"
	$swordselect.visible = false
	$crabselect.visible = false
	$octoselect.visible = true
	$effect.playing = true
	
func _on_crab_pressed() -> void:
	crab = true
	player = "crab"
	$swordselect.visible = false
	$crabselect.visible = true
	$octoselect.visible = false
	$effect.playing = true

func _on_select_pressed() -> void:
	$effect.playing = true
	if player == "swordfish":
		global.chosenplayer = "swordfish"
	if player == "octopus":
		global.chosenplayer = "octopus"
	if player == "crab": 
		global.chosenplayer = "crab"
	print(global.chosenplayer)
	playerchosen = true
	$swordfish.visible = false
	$crab.visible = false
	$octopus.visible = false
	if opchosen and playerchosen:
		$start.visible = true
	

#enemy select
func _on_badsword_pressed() -> void:
	op = "badsword"
	$badswordselect.visible = true
	$badcrabselect.visible = false
	$badoctoselect.visible = false
	$effect.playing = true

func _on_badocto_pressed() -> void:
	op = "badocto"
	$badswordselect.visible = false
	$badcrabselect.visible = false
	$badoctoselect.visible = true
	$effect.playing = true

func _on_badcrab_pressed() -> void:
	op = "badcrab"
	$badswordselect.visible = false
	$badcrabselect.visible = true
	$badoctoselect.visible = false
	$effect.playing = true

func _on_badselect_pressed() -> void:
	$effect.playing = true
	if op == "badsword":
		global.chosenop = "badsword"
	if op == "badocto":
		global.chosenop = "badocto"
	if op == "badcrab":
		global.chosenop = "badcrab"
	print(global.chosenop)
	$badsword.visible = false
	$badocto.visible = false
	$badcrab.visible = false
	opchosen = true
	if opchosen and playerchosen:
		$start.visible = true


func _on_start_pressed() -> void:
	$effect.playing = true
	if playerchosen and opchosen:
		get_tree().change_scene_to_file("res://scenes/stages/reef.tscn")
