extends Node2D


@export var speed = 400
var angular_speed = PI
var is_hit = false



func _process(delta):
	rotation += angular_speed * delta

	var velocity = Vector2.LEFT * speed

	position += velocity * delta
	
	if $"../CharacterBody2D".lives == 0:
		queue_free()
		
	




func _on_area_2d_body_entered(body: Node2D) -> void:
	$"../CharacterBody2D".increase_score(-1)
