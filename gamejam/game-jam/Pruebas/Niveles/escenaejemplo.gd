extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	pass
	#if $obstaculo.collision_layer("4"):
		#$print($obstaculo.collision_mask)


	

func _on_button_pressed():
	$Circulo.set_collision_mask_value(3,false)
	print($Circulo.collision_mask)

 
