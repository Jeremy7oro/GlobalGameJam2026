extends Area2D

signal picked(score)
@export var score: int=1	

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func _on_body_entered(body):
	if body.is_in_group("player"):
		#$".".hide()
		$AnimatedSprite2D.play("pick")
		$AnimatedSprite2D.animation_finished.connect (func ():
			picked.emit(score)
			queue_free()
			)
	
	
	
	
