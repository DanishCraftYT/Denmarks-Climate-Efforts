extends Node2D

# Called when the node enters the scene tree for the first time.
func _ready():
	add_child(load("res://GameScenes/UI/MainMenu.tscn").instantiate())
