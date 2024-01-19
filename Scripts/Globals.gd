extends Node

const BOARD_OFFSET = 2000 # contains the offset of all boards.

# used in PlayerMovement & SEFBoards:
var board_count = 0 # contains the amount of board nodes in the Info scene.
var current_board = 0 # contains the current board the player can see.

# used in SEFBoards:
var score = 0 # the score the player has.
var answered = 0 # how many questions the player has answered.
