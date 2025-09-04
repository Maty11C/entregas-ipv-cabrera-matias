extends Node

func _ready() -> void:
	$Player._set_projectile_container(self)
	$Turret1.set_values($Player, self)
	$Turret2.set_values($Player, self)
	$Turret3.set_values($Player, self)
