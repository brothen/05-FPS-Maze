extends Spatial

onready var player_lantern=get_node_or_null("/root/Game/Player/Pivot/Camera/Player_Lantern")
onready var floor_lantern=get_node_or_null("/root/Game/Maze/Lantern")


func _ready():
	player_lantern.visible=false
	floor_lantern.visible=true


func _on_Area_body_entered(body):
	
	if body.name=="Player":
		var sound=get_node_or_null("/root/Game/Lantern")
		if sound!=null:
			sound.playing=true
		floor_lantern.visible=false
		player_lantern.visible=true
		queue_free()


