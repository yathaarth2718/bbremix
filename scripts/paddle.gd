extends CharacterBody2D

const SPEED = 12000

func _physics_process(delta: float) -> void:
	
	var direction := Input.get_axis("move_left", "move_right")
	
	if direction:
		velocity.x = direction * SPEED * delta
	else:
		velocity.x = move_toward(velocity.x, 0, SPEED * delta)
	
	move_and_slide()
