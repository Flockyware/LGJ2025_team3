extends Control



@onready
var escenaCliente=$"../client"
@onready
var escenaCaldero=$"../cauldron"

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_button_pressed() -> void:
	print("presionaste para cambiar de escena")
	
	if escenaCliente.global_position == 0:
		escenaCliente.global_position = 1981
		escenaCliente.move_local_x(1981)
	elif escenaCliente.global_position.x == 1981:
		escenaCliente.global_position = 0
		escenaCliente.move_local_x(1981)

		
	  
