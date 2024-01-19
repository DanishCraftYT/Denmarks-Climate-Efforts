extends Node2D

func _on_main_menu_pressed(): # goes back to the main menu.
	get_node_or_null("/root/Game").add_child(load("res://GameScenes/UI/MainMenu.tscn").instantiate())
	get_node("..").queue_free()
