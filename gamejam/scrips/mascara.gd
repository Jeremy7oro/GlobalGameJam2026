extends Sprite2D


@onready var sonido: AudioStreamPlayer = $sonido
@onready var collision_shape_2d: CollisionShape2D = $Area2D/CollisionShape2D



func _on_area_2d_body_entered(body: Node2D) -> void:
	if body.is_in_group("player"):
		sonido.play()
		visible = false
		collision_shape_2d.call_deferred("set","disabled",true)
		body.iniciar_efecto_mascara()

func _on_sonido_finished() -> void:
	queue_free()
	
	
