extends Node2D


# diccionario de los materiales
var ingridients = {
	"a":"a",
	"b":"b",
	"c":"c",
	"d":"d",
}

# pocimas
var pocimaDePielSuave:Array=["b","d","a"]
var pocima2:Array=["b","c","a","c"]

#pocima actual
var recipe:Array = []


@onready
var pocimaA=$CanvasLayer/Control/VBoxContainer/buttons_container_up/Button_A
@onready
var animacionButtonA=$CanvasLayer/Control/VBoxContainer/buttons_container_up/Button_A/AnimationPlayer
@onready
var animacionButtonB=$CanvasLayer/Control/VBoxContainer/buttons_container_up/Button_B/AnimationPlayer
@onready
var animacionButtonC=$CanvasLayer/Control/VBoxContainer/buttons_container_down/Button_C/AnimationPlayer
@onready
var animacionButtonD=$CanvasLayer/Control/VBoxContainer/buttons_container_down/Button_D/AnimationPlayer



func recipe_print():
	print(recipe)
	if recipe.size() > pocimaDePielSuave.size():
		print("ooops error!")
	elif recipe.size() == pocimaDePielSuave.size():
		if recipe == pocimaDePielSuave:
			print("lograste!")
		else:
			print("ooops error!")



func _on_button_a_pressed() -> void:
	animacionButtonA.play("verter pocima")
	recipe.append(ingridients.a)
	recipe_print()
	

func _on_button_b_pressed() -> void:
	animacionButtonB.play("verterPocima2")
	recipe.append(ingridients.b)
	recipe_print()

func _on_button_c_pressed() -> void:
	animacionButtonC.play("verterPocima3")
	recipe.append(ingridients.c)
	recipe_print()

func _on_button_d_pressed() -> void:
	animacionButtonD.play("verterPocima4")
	recipe.append(ingridients.d)
	recipe_print()


func _on_button_a_mouse_entered() -> void:
	pass # Replace with function body.
