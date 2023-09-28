extends Node2D


var laser_scene : PackedScene = preload("res://scenes/projectiles/laser.tscn")
var grenade_scene : PackedScene = preload("res://scenes/projectiles/grenade.tscn")


func _on_gate__player_entered_gate(_body):
#	pass
	print("Alarm")


func _on_player_laser_fired(pos, dirn):
	var laser = laser_scene.instantiate() as Area2D
	$Projectiles.add_child(laser)
	laser.position = pos
	laser.rotation_degrees = rad_to_deg(dirn.angle()) + 90
	laser.direction = dirn

func _on_player_grenade_thrown(pos, dirn):
	var grenade = grenade_scene.instantiate() as RigidBody2D
	grenade.position = pos
	grenade.linear_velocity = grenade.initial_velocity * dirn
	$Projectiles.add_child(grenade)

