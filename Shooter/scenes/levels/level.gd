extends Node2D

var test_array: Array[String] = ["Hello", "World", "How", "Are you?"]

func _ready():
	$Logo.rotation_degrees = 90
	
	for i in test_array:
		print(i)
	
func _process(delta):
	$Logo.rotation_degrees += 50 * delta
	
	if $Logo.rotation_degrees > 180:
		$Logo.rotation_degrees = 0
		
	if $Logo.pos.x > 700:
		$Logo.pos.x = 0
		
#	print(Input.is_action_pressed("left"))
	
