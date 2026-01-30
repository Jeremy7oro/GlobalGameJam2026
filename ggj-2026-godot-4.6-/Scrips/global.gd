extends Node

var Mascara : String
var Amarillo : bool= false

func _process(delta: float) -> void:
	if Mascara == "Amarillo":
		Amarillo = true
