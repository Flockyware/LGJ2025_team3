extends Node2D

signal mover_a_caldero

@onready var cauldron: Node2D = $"../cauldron"

const MAX_RECIPE:int = 3

var requested_recipe:Array = []




# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	$DialogueBubble.start("quesito")
	#var layout = Dialogic.start("res://timelines/timeline.dtl")
	#layout.register_character(queso, $Marker2D)
	
	#esta funcion genera una receta al azar de 3 ingredinetes
	set_random_ingridient()
	print(requested_recipe)


func _on_button_pressed() -> void:
	emit_signal("mover_a_caldero")
	pass
	#comento esta linea de codigo para intentar hacer la transicion de movimiento 
	#get_tree().change_scene_to_file("res://scenes/cauldron.tscn")
	
func set_random_ingridient():
	#probabilidad de los ingredientes al generar la receta
	var prob:float
	
	for i in range(MAX_RECIPE):
		prob = randf()
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
