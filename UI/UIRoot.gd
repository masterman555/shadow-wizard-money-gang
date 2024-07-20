extends CanvasLayer


@onready var inventory_dialogue = %InventoryDialogue
@onready var player = %Player

func _unhandled_input(event):
	if event.is_action_released("inventory"):
		inventory_dialogue.open(player.inventory)
