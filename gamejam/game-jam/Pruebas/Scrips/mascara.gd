extends Area2D



func _on_body_entered(body: Node2D) -> void:
	$Label.text = str(body)
	if body == %Jugador2:
		queue_free()
