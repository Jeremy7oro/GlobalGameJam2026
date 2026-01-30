extends Area2D
@export var jugador: Node2D
@export_enum("Amarillo", "Azul", "Verde") var Mascara: String



func _on_body_entered(body: Node2D) -> void:
	
	if body == jugador :
		GLOBAL.Mascara = Mascara
		queue_free()
	
	
	$Label.text = str(GLOBAL.Mascara)
