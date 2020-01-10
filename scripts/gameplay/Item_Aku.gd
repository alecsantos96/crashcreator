extends Item

var character:Character

func _on_Picked(player):
	if !picked: picked = true
	else: return
	self.visible = false
	$sfx_1.play()
	character.health_increase()
	yield(get_tree().create_timer($sfx_1.stream.get_length(),false),"timeout")
	queue_free()



func _on_Area_body_entered(body):
	character = body
	_on_Picked(character)
	pass # Replace with function body.
