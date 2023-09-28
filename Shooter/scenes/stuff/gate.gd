extends StaticBody2D

signal _player_entered_gate(body)

func _on_entry_zone_body_entered(body):
#	print("Defences Activated, ", body.name, " Detected")
	_player_entered_gate.emit(body)


func _on_entry_zone_body_exited(_body):
#	print("Doorway Clear")
