extends ProgressBar

func update_health():
	var healthbar = $healthbar
	healthbar.value = global.playerhealth

func _physics_process(delta):
	update_health()
