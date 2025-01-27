extends Node2D


# diccionario de los materiales
var ingridients = {
	"a":"a",
	"b":"b",
	"c":"c",
	"d":"d",
}
@onready var client: Node2D = $"../client"
@onready var timerVariable=$Timer
# pocimas
var pocimaDePielSuave:Array=["b","d","a"]
var pocima2:Array=["b","c","a","c"]
var estadoJuego="o"

#pocima actual
var recipe:Array = []


@onready
var pocimaA=$interfaz/Control/VBoxContainer/buttons_container_up/Button_A
@onready
var animacionButtonA=$interfaz/Control/VBoxContainer/buttons_container_up/Button_A/AnimationPlayer
@onready
var animacionButtonB=$interfaz/Control/VBoxContainer/buttons_container_up/Button_B/AnimationPlayer
@onready
var animacionButtonC=$interfaz/Control/VBoxContainer/buttons_container_down/Button_C/AnimationPlayer
@onready
var animacionButtonD=$interfaz/Control/VBoxContainer/buttons_container_down/Button_D/AnimationPlayer

signal mover_a_cliente



func recipe_print():
	print(recipe)
	if recipe.size() > client.requested_recipe.size():
		estadoJuego="perdi"
		timerVariable.start()

	elif recipe.size() == client.requested_recipe.size():
		if recipe == client.requested_recipe:
			estadoJuego="gane"
			timerVariable.start()
			
		else:
			estadoJuego="perdi"
			timerVariable.start()



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



func _on_button_pressed() -> void:
	
	emit_signal("mover_a_cliente")
	
	#comento esta linea de codigo para intentar hacer la transicion de movimiento 
	#get_tree().change_scene_to_file("res://scenes/client.tscn")
	pass



func _on_timer_timeout() -> void:
	if estadoJuego=="gane":
		$menuVictoria.visible=true
	elif estadoJuego=="perdi":
		$menuPerdida.visible=true
