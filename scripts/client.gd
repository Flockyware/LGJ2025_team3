extends Node2D

signal mover_a_caldero

@onready var cauldron: Node2D = $"../cauldron"

const MAX_RECIPE:int = 3

var requested_recipe:Array = []

@onready var iconoReceta1=$P2E/iconoAnimado1
@onready var iconoReceta2=$P2E/iconoAnimado2
@onready var iconoReceta3=$P2E/iconoAnimado3


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	#$DialogueBubble.start("gat1")
	$DialogueBox.start("gat1")
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
	
	


func _on_dialogue_box_dialogue_signal(value: String) -> void:
		if value == "saltico":
			$gatoyobro2_0/animadorGatoyobro.stop()
			$gatoyobro2_0/animadorGatoyobro.play("salticoGato")
		elif value == "sonidito":
			$AudioStreamPlayer2D.play()
	


func _on_dialogue_box_dialogue_ended():
	$AudioStreamPlayer2D.stop()
	$P2E/AnimationPlayer.play("moverLibreta")
	$gatoyobro2_0/animadorGatoyobro.play("pestañeo")
	match requested_recipe[0]:
		"a":
			iconoReceta1.frame=0
		"b":
			iconoReceta1.frame=1
		"c":
			iconoReceta1.frame=2
		"d":
			iconoReceta1.frame=3
	
	match requested_recipe[1]:
		"a":
			iconoReceta2.frame=0
		"b":
			iconoReceta2.frame=1
		"c":
			iconoReceta2.frame=2
		"d":
			iconoReceta2.frame=3
			
	match requested_recipe[2]:
		"a":
			iconoReceta3.frame=0
		"b":
			iconoReceta3.frame=1
		"c":
			iconoReceta3.frame=2
		"d":
			iconoReceta3.frame=3



	


func _on_dialogue_box_dialogue_processed(speaker, dialogue, options):
	print("quesito")
