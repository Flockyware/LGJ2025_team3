extends Node2D

signal mover_a_caldero
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	$DialogueBubble.start("quesito")
	#var layout = Dialogic.start("res://timelines/timeline.dtl")
	#layout.register_character(queso, $Marker2D)
	pass # Replace with function body.



func _on_button_pressed() -> void:
	emit_signal("mover_a_caldero")
	pass
	#comento esta linea de codigo para intentar hacer la transicion de movimiento 
	#get_tree().change_scene_to_file("res://scenes/cauldron.tscn")
