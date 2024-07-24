extends Node3D

var InRange = false

func _on_area_3d_body_entered(body):
	if body.name == "Player":
		InRange = true
		%Label3D.show()
		if Input.is_action_pressed("interact"): #Does not get past this statement? Why UPDATE: IT STILL DOESNT WORTK
			print("Trol33ssasdsdasdada33333")
			if InRange == true:
				get_tree().paused = true
				%Shop.show()
				print("Trosal")
				get_node("Area3D/Shop/Anim").play("TransitionIn")

func _on_area_3d_body_exited(body):
	%Label3D.hide()
	InRange = false
	%Shop.hide()
	get_node("Area3D/Shop/Anim").play("TransitionOut")
