extends Sprite2D

# Called when the node enters the scene tree for the first time.
func _ready():
	if get_node_or_null("/root/Game/Info") != null:
		Globals.board_count = len(get_node("/root/Game/Info").get_children())-2 # subtracting 2 does so the Player node doesn't get counted.
	else:
		Globals.board_count = len(get_node("/root/Game/SEF/Minigame").get_children())-2 # subtracting 2 does so the Player & Score nodes doesn't get counted.
	if Globals.board_count == 0:
		get_tree().quit() # exits game if no boards where found.


func _on_lb_pressed():
	if !Globals.current_board == 0:
		self.position.x = self.position.x - Globals.BOARD_OFFSET
		Globals.current_board -= 1


func _on_rb_pressed():
	if !Globals.current_board == Globals.board_count:
		self.position.x = self.position.x + Globals.BOARD_OFFSET
		Globals.current_board += 1


func _on_db_pressed(): # UPDATE: THIS SHIT MAGICALLY FIXED ITSELF!!! LET'S ALL PARTY NOW!!!
	get_node_or_null("/root/Game").add_child(load("res://GameScenes/UI/MainMenu.tscn").instantiate())
	var info = get_node("/root/Game/Info")
	if info == null:
		get_node("/root/Game/SEF").queue_free()
	else:
		info.queue_free()
