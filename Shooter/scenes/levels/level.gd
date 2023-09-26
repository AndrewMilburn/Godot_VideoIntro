extends Node2D


func _on_gate_body_entered(body):
	print("Gate entered")
	print(body)


func _on_gate_body_exited(body):
	print("Gate exited")
