extends Node

func _ready() -> void:
	$Player._set_projectile_container(self)
	var viewport = get_viewport()
	$Turret1.set_values(viewport, $Player, self)
	$Turret2.set_values(viewport, $Player, self)
	$Turret3.set_values(viewport, $Player, self)
