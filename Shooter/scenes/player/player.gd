extends CharacterBody2D

var laser_ready : bool = true
var grenade_ready : bool = true

func _process(_delta):	
	var direction = Input.get_vector("left", "right", "up", "down")
	velocity = direction * 500
	move_and_slide()
	
	if(Input.is_action_pressed("primary action") and laser_ready):
		print("Pew Pew")
		laser_ready = false
		$laser_cooldown.start()
		
	if(Input.is_action_pressed("secondary action") and grenade_ready):
		print("GRENADE!!")
		grenade_ready = false
		$grenade_cooldown.start()


func _on_laser_cooldown_timeout():
	laser_ready = true
	print("laser ready")


func _on_grenade_cooldown_timeout():
	grenade_ready = true
	print("grenade ready")
