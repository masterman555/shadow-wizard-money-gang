extends CanvasLayer

func _on_close_pressed():
	get_node("Anim").play("TransitionOut")
