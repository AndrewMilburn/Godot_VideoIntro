extends Node2D


var laser_scene : PackedScene = preload("res://scenes/projectiles/laser.tscn")
var grenade_scene : PackedScene = preload("res://scenes/projectiles/grenade.tscn")


func _on_gate__player_entered_gate(_body):
	var tween = create_tween()
	tween.tween_property($Player, "speed", 0, 0.8)


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



func _on_house_player_entered_house():
	var tween = get_tree().create_tween()
	tween.set_parallel(true)
	tween.tween_property($Player/Camera2D, "zoom", Vector2(1,1), 1).from(Vector2(0.8,0.8))
	tween.tween_property($Player, "modulate:a", 0.2, 1.5)


func _on_house_player_exited_house():
	var twoon = get_tree().create_tween()
	twoon.tween_property($Player/Camera2D, "zoom", Vector2(0.6,0.6), 1)
