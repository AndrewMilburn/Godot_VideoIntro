extends CharacterBody2D

var laser_ready : bool = true
var grenade_ready : bool = true
signal laser_fired(pos)
signal grenade_thrown

func _process(_delta):	
	var direction = Input.get_vector("left", "right", "up", "down")
	velocity = direction * 500
	move_and_slide()
	
	if(Input.is_action_pressed("primary action") and laser_ready):
		print("Pew Pew")
		var laser_markers = $LaserSpawnPoints.get_children()
		print(laser_markers)
		var selected_laser = laser_markers[randi() % laser_markers.size()]
		print(selected_laser)
		laser_ready = false
		$laser_cooldown.start()
		laser_fired.emit(selected_laser.global_position)
		
	if(Input.is_action_pressed("secondary action") and grenade_ready):
		print("GRENADE!!")
		grenade_ready = false
		$grenade_cooldown.start()
		grenade_thrown.emit()


func _on_laser_cooldown_timeout():
	laser_ready = true
	print("laser ready")


func _on_grenade_cooldown_timeout():
	grenade_ready = true
	print("grenade ready")
