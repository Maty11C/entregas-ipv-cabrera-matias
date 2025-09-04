extends Sprite2D
class_name Projectile

func _physics_process(delta: float) -> void:
	position.x += 50 * delta
