extends CanvasLayer


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_3X3_pressed():
	get_tree().change_scene("res://Scenes/3X3_DIFFICULTY.tscn")

func _on_4X4_pressed():
	get_tree().change_scene("res://Scenes/4X4_DIFFICULTY.tscn")
