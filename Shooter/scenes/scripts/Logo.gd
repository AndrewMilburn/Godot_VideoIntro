extends Sprite2D

var pos:Vector2 = Vector2.ZERO
const speed: int = 200
var test_scale: int = 1

func _ready():
	pos = Vector2(100, 300)
	position = pos
	
#	var test_rotation: int = 45
#	rotation_degrees = test_rotation
	
#	test_scale = 2
#	scale = Vector2(test_scale, test_scale)
	

func _process(delta):
	pos.x += speed * delta
	position = pos

