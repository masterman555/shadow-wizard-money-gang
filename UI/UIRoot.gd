extends CanvasLayer

@export var all_recipes:ResourceGroup

@onready var inventory_dialogue = %InventoryDialogue
@onready var player = %Player
@onready var crafting_dialogue:CraftingDialogue = %CraftingDialogue

var _all_recipes:Array[Recipe] = []

func _ready():
	all_recipes.load_all_into(_all_recipes)

func _unhandled_input(event):
	if event.is_action_released("inventory"):
		inventory_dialogue.open(player.inventory)
	if event.is_action_released("craft"):
		crafting_dialogue.open(_all_recipes, player.inventory)
