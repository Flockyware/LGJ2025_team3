extends Node2D

@onready var cauldron: Node2D = $cauldron
const MAX_RECIPE:int = 3

var requested_recipe:Array = []

# Called when the node enters the scene tree for the first time.
func _ready() -> void:


	
func set_random_ingridient():
	var prob:float = randf()
	
	print(prob)
	
	if prob >= 0.75:
		requested_recipe.append("a")
	elif prob >= 0.50:
		requested_recipe.append("b")
	elif prob >= 0.25:
		requested_recipe.append("c")
	else:
		requested_recipe.append("d")
	pass
