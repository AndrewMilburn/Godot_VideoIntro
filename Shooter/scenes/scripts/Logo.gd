extends Sprite2D

var pos:Vector2 = Vector2.ZERO
const speed: int = 200
var test_scale: int = 1


func _ready():
	pos = Vector2(100, 300)
	position = pos
	print($"..".test_array)
	

func _process(delta):
	pos.x += speed * delta
	position = pos

