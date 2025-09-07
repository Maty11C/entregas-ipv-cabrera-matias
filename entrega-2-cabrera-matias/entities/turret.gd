extends Sprite2D

@export var projectile_scene: PackedScene

@onready var fire_position = $FirePosition

var projectile_container: Node

var player

func set_values(viewport, player, projectile_container):
	self.player = player
	self.projectile_container = projectile_container
	$Timer.start()
	set_random_position(int(viewport.size.x), int(player.position.y))

func set_random_position(x_limit, y_limit):
	position = Vector2(randi() % x_limit, randi() % y_limit)

func _on_timer_timeout() -> void:
	fire()
	
func fire():
	var projectile: Projectile = projectile_scene.instantiate()
	projectile_container.add_child(projectile)
	projectile.set_starting_values($FirePosition.global_position, (player.global_position - fire_position.global_position).normalized())
	projectile.delete_requested.connect(_on_projectile_deleted_requested)
	
func _on_projectile_deleted_requested(projectile):
	projectile_container.remove_child(projectile)
	projectile.queue_free()
