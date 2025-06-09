extends CharacterBody2D

const SPEED = 130.0

func _physics_process(_delta: float) -> void:
	
	var direction := Input.get_axis("move_left", "move_right")
	
	if direction:
		velocity.x = direction * SPEED
	else:
		velocity.x = move_toward(velocity.x, 0, SPEED)
	
	move_and_slide()
