extends Node

var children = null # contains all the children of this node. used to get the ReadMode & ImageMode nodes.

# Called when the node enters the scene tree for the first time.
func _ready():
	children = self.get_children() # [Title, ReadMode, ImageMode].
	children.remove_at(0) # removes Title node.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	if Input.is_action_just_pressed("ReadMode"):
		if children[0].visible == true:
			children[0].visible = false
			children[1].visible = true
		elif children[0].visible == false:
			children[0].visible = true
			children[1].visible = false
