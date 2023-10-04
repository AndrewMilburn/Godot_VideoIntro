extends RigidBody2D

const initial_velocity = 750

func explode():
	$AnimationPlayer.play("Splosion")

