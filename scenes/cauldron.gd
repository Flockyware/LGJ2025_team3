extends Node2D

var recipe:Array = []

var ingridients = {
	"a":"a",
	"b":"b",
	"c":"c",
	"d":"d",
}
@onready
var pocimaA=$CanvasLayer/Control/VBoxContainer/buttons_container_up/Button_A
@onready
var animacionButtonA=$CanvasLayer/Control/VBoxContainer/buttons_container_up/Button_A/AnimationPlayer
@onready
var animacionButtonB=$CanvasLayer/Control/VBoxContainer/buttons_container_up/Button_B/AnimationPlayer

func recipe_print():
	print(recipe)

func _on_button_a_pressed() -> void:
	pocimaA.visible=false
	animacionButtonA.play("verter pocima")
	recipe.append(ingridients.a)
	recipe_print()
	

func _on_button_b_pressed() -> void:
	animacionButtonB.play("verterPocima2")
	recipe.append(ingridients.b)
	recipe_print()

func _on_button_c_pressed() -> void:
	recipe.append(ingridients.c)
	recipe_print()

func _on_button_d_pressed() -> void:
	recipe.append(ingridients.d)
	recipe_print()


func _on_button_a_mouse_entered() -> void:
	pass # Replace with function body.
