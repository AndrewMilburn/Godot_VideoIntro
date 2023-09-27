extends Node2D


var laser_scene : PackedScene = preload("res://scenes/projectiles/laser.tscn")
var grenade_scene : PackedScene = preload("res://scenes/projectiles/grenade.tscn")


func _on_gate__player_entered_gate(_body):
	print("Alarm")


func _on_player_laser_fired(pos):
	var laser = laser_scene.instantiate()
	$Projectiles.add_child(laser)
	laser.position = pos

func _on_player_grenade_thrown(pos):
	var grenade = grenade_scene.instantiate()
	$Projectiles.add_child(grenade)
	grenade.position = pos
