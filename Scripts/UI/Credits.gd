extends Node2D

# {1 = left, 2 = right, 3 = down, 4 = up}. [up, up, down, down, left, right, left, right].
var konami_code = [4, 4, 3, 3, 1, 2, 1, 2] # contains the konami code.
var code_idx = 0 # contains the idx of the next code the player should press.

func code_valid(code): # checks if the code is valid.
	if konami_code[code_idx] == code:
		if code_idx == len(konami_code)-1:
			get_node("." + "/DVAUPlayer").play() # plays DarkViperAU OHKO fail.
			code_idx = 0
		else:
			code_idx += 1
	else:
		code_idx = 0

# BUTTONS: #

func _on_lb_pressed():
	code_valid(1)


func _on_rb_pressed():
	code_valid(2)


func _on_db_pressed():
	code_valid(3)


func _on_ub_pressed():
	code_valid(4)
