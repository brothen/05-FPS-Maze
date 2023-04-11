extends Control

var menu=null

func _ready():
	pass


func _on_Quit_pressed():
	get_tree().quit()


func _on_Continue_pressed():
	menu=get_node_or_null("/root/Game/UI/Menu")
	get_tree().paused=false
	menu.hide()
