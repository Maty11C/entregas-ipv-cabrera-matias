extends Sprite2D

@onready var fire_position = $FirePosition

@export var projectile_scene: PackedScene

var projectile_container: Node

func fire():
	var projectile_instance: Projectile = projectile_scene.instantiate()
	fire_position.add_child(projectile_instance)
	#projectile_instance.add_child(projectile_instance)
