extends Node2D

@onready var game_manager: Node = %GameManager
@onready var timer: Timer = $Walls/bottom_wall/Timer
@onready var paddle: CharacterBody2D = $Paddle
var ball_prefab = preload("res://scenes/ball.tscn")
var ball

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	ball = ball_prefab.instantiate()
	ball.position = Vector2(150,330)
	add_child(ball)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func reset():
	ball.queue_free()
	ball = ball_prefab.instantiate()
	add_child(ball)
	ball.position = Vector2(150,330)
	paddle.position = Vector2(150, 350)

func _on_bottom_wall_body_entered(body: Node2D) -> void:
	timer.start()

func _on_timer_timeout() -> void:
	game_manager.lose_life()
	reset()
