extends Node3D

var InRange = false

func _on_area_3d_body_entered(body):
	if body.name == "Player":
		%Label3D.show()
		InRange = true

func _on_area_3d_body_exited(body):
	%Label3D.hide()
	%Shop.hide()
	get_node("Area3D/Shop/Anim").play("TransitionOut")
	InRange = false

func _process(delta):
	if InRange == true and Input.is_action_just_pressed("shop"):  
			%Shop.show()
			get_node("Area3D/Shop/Anim").play("TransitionIn")
