extends Node2D

@onready var spawn_timer = $Timer

const ENEMY = preload("res://Enemy.tscn")


func _on_spawn_timer_timeout() -> void:
	var newEnemy = ENEMY.instantiate()
	
	get_parent().add_child(newEnemy)
	
	newEnemy.global_position = global_position
