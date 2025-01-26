extends Node

@onready var transiciones:AnimationPlayer = $Transitions
# Called when the node enters the scene tree for the first time.
func _ready():
	pass


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_cauldron_mover_a_cliente():
	transiciones.play("to_client")
	


func _on_client_mover_a_caldero():
	transiciones.play("to_cauldron")
	

func _ocultar_particulas():
	$cauldron/sprite_cauldron/particulas.hide()
	
func _mostrar_particulas():
	$cauldron/sprite_cauldron/particulas.show()
