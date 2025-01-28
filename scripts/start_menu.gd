extends Control

@onready var panel: Panel = $Panel

func _on_start_pressed() -> void:
	get_tree().change_scene_to_file("res://scenes/game.tscn")


func _on_exit_pressed() -> void:
	get_tree().quit()
	


func _on_credits_pressed() -> void:
	panel.visible = true
