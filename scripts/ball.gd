extends CharacterBody2D

const SPEED = 12000

var direction := ([-1, 1])

func _ready() -> void:
	pass

func _process(delta: float) -> void:
	start(delta)
	
func _physics_process(delta: float) -> void:
	
	var collision := move_and_collide(velocity * delta)
	if collision:
		velocity = velocity.bounce(collision.get_normal())
		if collision.get_collider().has_method("hit"):
			collision.get_collider().hit()
		
func start(delta: float) -> void:
	if Input.is_action_just_pressed("start"):
		var det_direction : int = direction[randi() % direction.size()]
		velocity = Vector2(SPEED * det_direction * delta, SPEED * delta)
