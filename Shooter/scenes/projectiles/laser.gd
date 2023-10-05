extends Area2D

var speed: int = 2000
var direction = Vector2.UP

func _process(delta):
	position += speed * direction * delta

func _on_body_entered(body):
	queue_free()
