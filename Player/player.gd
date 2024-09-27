extends CharacterBody3D


@export var player_speed : float = 15.0
@export var NEGATIVE_SPEED : float = 8.0


var inventory:Inventory = Inventory.new()

func on_item_picked_up(item:Item):
	inventory.add_item(item)
	print("I got a ", item.name)

func _physics_process(_delta):
	var direction = Vector3() # The player's movement vector.
	if Input.is_action_pressed("move_right"):
		direction.x += 1
	if Input.is_action_pressed("move_left"):
		direction.x -= 1
	if Input.is_action_pressed("move_down"):
		direction.z += 1
	if Input.is_action_pressed("move_up"):
		direction.z -= 1
	
	if direction != Vector3.ZERO:
		direction = direction.normalized()
		$Pivot.basis = Basis.looking_at(direction)
	
	direction = direction.normalized()
	if direction:
		velocity.x = direction.x * player_speed
		velocity.z = direction.z * player_speed
	else:
		velocity.x = move_toward(velocity.x, 0, NEGATIVE_SPEED)
		velocity.z = move_toward(velocity.z, 0, NEGATIVE_SPEED)
	move_and_slide()

#Menu
	if Input.is_action_pressed("pause"):
		%PauseMenu.show()
		get_tree().paused = true

func _on_resume_pressed():
	get_tree().paused = false
	%PauseMenu.hide()

func _on_quit_pressed():
	get_tree().quit()
	
func update_currency(amount): # currently no work :( - its in ready func for now
	%Currency.set_text(GlobalGold)

func _ready(): # it doesnt work
	%Currency.set_text(str(GlobalGold))
