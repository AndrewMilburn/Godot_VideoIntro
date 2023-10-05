extends CharacterBody2D

var speed:int = 200

func _process(_delta):
	velocity = speed * Vector2.RIGHT
	move_and_slide()

func hit():
	print("Drone Damaged")
	
