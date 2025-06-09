extends CharacterBody2D

const SPEED = 5

func _ready() -> void:
	velocity = Vector2(0, SPEED)
	
func _physics_process(_delta: float) -> void:
	
	var col := move_and_collide(velocity)
	if col:
		var normal := col.get_normal()
		velocity = velocity.bounce(normal)
		
