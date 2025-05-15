extends CharacterBody2D

@export var speed = 400
@export var lives = 5
@export var enemies = 0

func increase_score(amount: int) -> void:
	lives+= amount
	
func increase_enemy(amount: int) -> void:
	enemies+= amount
	
func _process(delta: float) -> void:
	$"../Label".text = "Lives: " + str(lives)
	$"../Label2".text = "Enemies: " + str(enemies)

func get_input():
	var input_direction = Input.get_vector("ui_left", "ui_right", "ui_up", "ui_down")
	velocity = input_direction * speed

func _physics_process(delta):
	get_input()
	move_and_slide()
	
