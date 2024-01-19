extends Node2D

var true_boards = ["SEFBoard", "SEFBoard3", "SEFBoard6"] # contains the names of all the boards that are true.
var false_boards = ["SEFBoard2", "SEFBoard4", "SEFBoard5", "SEFBoard7"] # contains the names of all the boards that are false.

func show_exit_screen():
	if Globals.score == 1:
		get_node("/root/Game/SEF/ExitScreen/FinalScore").set_text("you got: %s point" % [Globals.score])
	else:
		get_node("/root/Game/SEF/ExitScreen/FinalScore").set_text("you got: %s points" % [Globals.score])
	get_node("/root/Game/SEF/Minigame").visible = false
	get_node("/root/Game/SEF/ExitScreen").visible = true
	get_node(".." + "/Player").position.x -= Globals.board_count * Globals.BOARD_OFFSET


func _on_true_pressed():
	get_node("." + "/False").queue_free()
	get_node("." + "/True").queue_free()
	if get_node(".").name in true_boards:
		Globals.score += 1
	get_node(".." + "/Player/Score").set_text("score: %s" % [Globals.score])
	get_node(".." + "/Player").position.x += Globals.BOARD_OFFSET
	Globals.current_board += 1
	Globals.answered += 1
	if Globals.answered == Globals.board_count:
		show_exit_screen()


func _on_false_pressed():
	get_node("." + "/False").queue_free()
	get_node("." + "/True").queue_free()
	if get_node(".").name in false_boards:
		Globals.score += 1
	get_node(".." + "/Player/Score").set_text("score: %s" % [Globals.score])
	get_node(".." + "/Player").position.x += Globals.BOARD_OFFSET
	Globals.current_board += 1
	Globals.answered += 1
	if Globals.answered == Globals.board_count:
		show_exit_screen()
