extends CanvasLayer


@export var item_1:Item
@export var item_2:Item
@export var item_3:Item

var inventory:Inventory = Inventory.new()

func _on_close_pressed():
	%Shop.hide()
	print(GlobalGold.gold)
func _on_buy_pressed():
	var hasItem = false
	%ItemList.deselect_all()
	for i in inventory._content:
		if inventory._content[i]["Name"] == Item["Name"] and GlobalGold.gold >= Item["Price"]: #this prob works if somehow you can access the actual value of the price
#			GlobalGold.gold - Item["Price"]
			Inventory["Count"] += 1
			hasItem = true
	if hasItem == false:
#		if body.has_method("on_item_picked_up"):
#			body.on_item_picked_up(item_1)
		pass
	print(inventory._content)


func _on_item_list_item_clicked():
	%Buy.disabled = false
