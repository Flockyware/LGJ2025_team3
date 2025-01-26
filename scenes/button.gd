extends Button

@onready
var escenaCliente=$"../client"
@onready
var escenaCaldero=$"../cauldron"

func _on_pressed() -> void:
	print("presionaste para cambiar de escena")
	if escenaCliente.global_position.x == 0:
		escenaCliente.global_position = 1981
	elif escenaCliente.global_position.x == 1981:
		escenaCliente.global_position = 0
		
	  
