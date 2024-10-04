extends CanvasLayer

func _on_exit_button_pressed():
	get_tree().quit()

func _on_menu_button_2_pressed():
	get_tree().change_scene_to_file("res://Maps/MainMenu/Main.tscn")

func _on_visibility_changed():
#	%Label2.set_text(Inventory.get_items())
	pass
