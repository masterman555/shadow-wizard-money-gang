extends Node

@export var gold:int = 100


func purchase(price):
	if gold >= price:
		gold = gold - price
	else:
		pass
