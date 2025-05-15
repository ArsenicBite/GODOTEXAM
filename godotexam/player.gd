extends CharacterBody2D

@export var speed = 400
@export var score = 0

func _process(delta: float) -> void:
	$"../Label".text = "SCORE: " + str(score)

func get_input():
	var input_direction = Input.get_vector("ui_left", "ui_right", "ui_up", "ui_down")
	velocity = input_direction * speed

func _physics_process(delta):
	get_input()
	move_and_slide()
