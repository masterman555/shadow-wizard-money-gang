extends Node3D



func _on_area_3d_body_entered(body):
	%Label3D.show()
	if Input.is_action_just_pressed("shop"):
		print("Lol you are buy")
		queue_free()


func _on_area_3d_body_exited(body):
	%Label3D.hide()
