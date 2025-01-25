extends Node2D

var recipe:Array = []

var ingridients = {
	"a":"a",
	"b":"b",
	"c":"c",
	"d":"d",
}

func recipe_print():
	print(recipe)

func _on_button_a_pressed() -> void:
	recipe.append(ingridients.a)
	recipe_print()

func _on_button_b_pressed() -> void:
	recipe.append(ingridients.b)
	recipe_print()

func _on_button_c_pressed() -> void:
	recipe.append(ingridients.c)
	recipe_print()

func _on_button_d_pressed() -> void:
	recipe.append(ingridients.d)
	recipe_print()
