extends CharacterBody3D


@export var player_speed : float = 50.0
@export var NEGATIVE_SPEED : float = 8.0


var inventory:Inventory = Inventory.new()







func on_item_picked_up(item:Item):
	inventory.add_item(item)
	print("I got a ", item.name)

func _physics_process(delta):
	var direction = Vector3() # The player's movement vector.
	if Input.is_action_pressed("move_right"):
		direction.x += 1
	if Input.is_action_pressed("move_left"):
		direction.x -= 1
	if Input.is_action_pressed("move_down"):
		direction.z += 1
	if Input.is_action_pressed("move_up"):
		direction.z -= 1
	
	direction = direction.normalized()
	if direction:
		velocity.x = direction.x * player_speed
		velocity.z = direction.z * player_speed
	else:
		velocity.x = move_toward(velocity.x, 0, NEGATIVE_SPEED)
		velocity.z = move_toward(velocity.z, 0, NEGATIVE_SPEED)
	move_and_slide()
