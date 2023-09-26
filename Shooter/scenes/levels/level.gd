extends Node2D

func _on_gate__player_entered_gate(body):
	print("Alarm")


func _on_player_laser_fired():
	print("player fired laser")
	

func _on_player_grenade_thrown():
	print("player threw grenade")
