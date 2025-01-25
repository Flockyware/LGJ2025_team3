extends Control

#---------Esta funcion esta conectada a la señal "pressed" del boton start, te mueve a la escena "game"
func _on_start_pressed() -> void:
	get_tree().change_scene_to_file("res://scenes/game.tscn")


#---------Esta funcion esta conectada a la señal "pressed" del boton exit, cierra directamente el juego
func _on_exit_pressed() -> void:
	get_tree().quit()
