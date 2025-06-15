extends RigidBody2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func hit() -> void:
	$Sprite2D.visible = false
	$CollisionShape2D.disabled = true
	
	await get_tree().create_timer(1).timeout
	queue_free()
