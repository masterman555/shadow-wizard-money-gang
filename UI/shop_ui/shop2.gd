extends CanvasLayer

@export var item_1:Item
@export var item_2:Item
@export var item_3:Item
@export var item_4:Item
@export var item_5:Item


var inventory:Inventory = Inventory.new()
var enoughGold = false
var selected_Item : int
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
	inventory.add_item(thisisthecurrentitemthatyouareholding)
	print(inventory._content)

func _on_item_list_item_clicked(index, _at_position, _mouse_button_index):
	%Buy.disabled = false
	selected_Item = index
	if %ItemList.get_item_text(selected_Item) == item_1.name:
		thisisthecurrentitemthatyouareholding = item_1
	elif %ItemList.get_item_text(selected_Item) == item_2.name:
		thisisthecurrentitemthatyouareholding = item_2
	elif %ItemList.get_item_text(selected_Item) == item_3.name:
		thisisthecurrentitemthatyouareholding = item_3
	elif %ItemList.get_item_text(selected_Item) == item_4.name:
		thisisthecurrentitemthatyouareholding = item_4
	elif %ItemList.get_item_text(selected_Item) == item_5.name:
		thisisthecurrentitemthatyouareholding = item_5
	else:
		print("Get Goofed")
