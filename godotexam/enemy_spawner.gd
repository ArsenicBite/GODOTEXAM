extends Node2D

@onready var spawn_timer = $Timer

const ENEMY = preload("res://Enemy.tscn")

func _on_timer_timeout() -> void:
	$"../CharacterBody2D".increase_enemy(1)
	var newEnemy = ENEMY.instantiate()
	
	get_parent().add_child(newEnemy)
	
	newEnemy.global_position = global_position
	pass # Replace with function body.
