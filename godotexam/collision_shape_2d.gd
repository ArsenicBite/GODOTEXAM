extends CharacterBody2D


@export var speed = 400
var angular_speed = PI
var is_hit = false



func _process(delta):
	rotation += angular_speed * delta

	var velocity = Vector2.LEFT * speed

	position += velocity * delta
	
	

#func _physics_process(delta):
	#move_and_slide()

func _on_area_3d_body_entered(body: Node3D) -> void:
	if not is_hit:
		is_hit = true
		$CharacterBody2D.increase_score(1)
