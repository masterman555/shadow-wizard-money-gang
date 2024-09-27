extends Node3D

var InRange = false

func _on_area_3d_body_entered(body):
	if body.name == "Player":
		%Label3D.show()
		InRange = true

func _on_area_3d_body_exited(_body):
	%Label3D.hide()
	%Shop.hide()
	InRange = false

func _process(_delta):
	if InRange == true and Input.is_action_just_pressed("shop"):  
		%Shop.show()
	else: 
		%Shop.hide()
