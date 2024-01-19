extends Node

func _on_info_pressed(): # accesses infomation scene.
	get_node("..").add_child(load("res://GameScenes/Info.tscn").instantiate())
	self.queue_free()


func _on_minigames_pressed(): # accesses minigames.
	get_node("/root/Game/MainMenu/Minigames").visible = true
	get_node("/root/Game/MainMenu/Main").visible = false


func _on_exit_pressed(): # exits game.
	get_tree().quit()


func _on_sef_pressed(): # accesses the true or false minigame.
	get_node("/root/Game").add_child(load("res://GameScenes/Minigames/SEF.tscn").instantiate())
	get_node("/root/Game/MainMenu").queue_free()


func _on_main_menu_pressed(): # goes back to the main menu from the minigames / credits menu.
	get_node("/root/Game/MainMenu/Minigames").visible = false
	get_node("/root/Game/MainMenu/Credits").visible = false
	get_node("/root/Game/MainMenu/Main").visible = true


func _on_credits_pressed():
	get_node("/root/Game/MainMenu/Credits").visible = true
	get_node("/root/Game/MainMenu/Main").visible = false
