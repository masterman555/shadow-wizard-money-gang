extends Control

#var option_is_open = false #check line 10

func _on_start_button_pressed():
	get_tree().change_scene_to_file("res://Maps/stage12.tscn")

func _on_option_button_pressed():
	%Options.show()
#	option_is_open = true #lol
#	while option_is_open == true and _on_option_button_pressed():
#		%Options.hide()
#		option_is_open = false

func _on_option_close_pressed():
	%Options.hide()

func _on_quit_button_pressed():
	get_tree().quit()
