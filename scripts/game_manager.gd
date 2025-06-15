extends Node

var life = 3

@onready var life_counter: Label = $life_counter

func lose_life() -> void:
	life -= 1
	life_counter.text = "Lives left: " + str(life)
