extends Sprite2D

@onready var cannon = $Cannon

@export var speed: float = 500

var projectile_container: Node

func _set_projectile_container(container: Node):
	cannon.projectile_container = container
	projectile_container = container

func _process(delta: float) -> void:
	var direction := int(Input.is_action_pressed("move_right")) - int(Input.is_action_pressed("move_left"))

	var mouse_position: Vector2 = get_global_mouse_position()
	cannon.look_at(mouse_position)
	
	if (Input.is_action_just_pressed("fire")):
		cannon.fire()
	
	position.x += direction * speed * delta
