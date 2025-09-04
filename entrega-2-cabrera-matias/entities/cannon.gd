extends Sprite2D

@onready var fire_position = $FirePosition

@export var projectile_scene: PackedScene

var projectile_container: Node

func fire():
	var projectile_instance: Projectile = projectile_scene.instantiate()
	projectile_container.add_child(projectile_instance)
	projectile_instance.set_starting_values(fire_position.global_position, (fire_position.global_position - global_position).normalized())
