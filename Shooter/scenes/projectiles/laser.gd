extends Area2D

var speed: int = 2000
var direction = Vector2.UP

func _ready():
	$LaserTime.start()

func _process(delta):
	position += speed * direction * delta

func _on_body_entered(body):
	if 'hit' in body:
		body.hit()
	queue_free()


func _on_timer_timeout():
	queue_free()
