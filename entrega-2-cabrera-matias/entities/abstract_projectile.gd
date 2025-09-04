extends Sprite2D
class_name Projectile

@export var speed: float

var direction: Vector2 # Vector normalizado

func _ready() -> void:
	set_physics_process(false)
	
func set_starting_values(starting_position: Vector2, direction: Vector2):
	global_position = starting_position
	self.direction = direction
	set_physics_process(true)

func _physics_process(delta: float) -> void:
	position += direction * speed * delta
