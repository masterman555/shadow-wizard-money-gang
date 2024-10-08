extends CanvasLayer

@export var item_1:Item
@export var item_2:Item
@export var item_3:Item
@export var item_4:Item
@export var item_5:Item

@onready var player = get_node("/root/Node3D/Player")

var inventory:Inventory
var enoughGold = false
var selected_item : int
var thisisthecurrentitemthatyouareholding : Item
var hasItem = false

func _ready():
	%ItemList.add_item(item_1.name,item_1.icon)
	%ItemList.add_item(item_2.name,item_2.icon)
	%ItemList.add_item(item_3.name,item_3.icon)
	%ItemList.add_item(item_4.name,item_4.icon)
	%ItemList.add_item(item_5.name,item_5.icon)
func _on_close_pressed():
	%Panel.hide()
	print(GlobalGold.gold)

func _on_buy_pressed():
	%ItemList.deselect_all()
	GlobalGold.purchase(thisisthecurrentitemthatyouareholding.price)
	var player_inventory = player.get_inventory()
	player_inventory.add_item(thisisthecurrentitemthatyouareholding)
	print("Item added to inventory: ", thisisthecurrentitemthatyouareholding)
	print(player_inventory._content)

func _on_item_list_item_clicked(index, _at_position, _mouse_button_index):
	%Buy.disabled = false
	selected_item = index
	match %ItemList.get_item_text(selected_item):
		item_1.name:
			thisisthecurrentitemthatyouareholding = item_1
		item_2.name:
			thisisthecurrentitemthatyouareholding = item_2
		item_3.name:
			thisisthecurrentitemthatyouareholding = item_3
