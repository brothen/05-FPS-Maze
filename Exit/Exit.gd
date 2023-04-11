extends Area


func _ready():
	pass


func _on_Exit_body_entered(body):
	if body.name=="Player":
		var sound=get_node_or_null("/root/Game/End")
		if sound!=null:
			sound.playing=true
		var timer=get_node_or_null("/root/Game/Player/Pivot/Camera/Player_Lantern/Timer")
		timer.start()
		queue_free()
		
