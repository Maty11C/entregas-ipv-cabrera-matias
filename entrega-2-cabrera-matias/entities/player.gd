extends Sprite2D

@export var speed: float = 500

func _process(delta: float) -> void:
	var direction := int(Input.is_action_pressed("move_right")) - int(Input.is_action_pressed("move_left"))
	
	position.x += direction * speed * delta
