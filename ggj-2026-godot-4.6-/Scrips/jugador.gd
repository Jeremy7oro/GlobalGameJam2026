extends CharacterBody2D

@export var animacion: AnimatedSprite2D
var _velocidad: float = 300.0
const SPEED = 300.0
const JUMP_VELOCITY = -500.0


func _physics_process(delta: float) -> void:
	# Add the gravity.
	if not is_on_floor():
		velocity += get_gravity() * delta

	# Handle jump.
	if Input.is_action_just_pressed("Salto") and is_on_floor():
		velocity.y = JUMP_VELOCITY

	# movimiento lateral
	if Input.is_action_pressed("Derecha"):
		velocity.x = _velocidad
		animacion.flip_h = false
	elif Input.is_action_pressed("Izquierda"):
		velocity.x = -_velocidad
		animacion.flip_h = true
	else:
		velocity.x = 0
	move_and_slide()
	
	# animación
	if !is_on_floor():
		animacion.play("saltar")
	elif velocity.x != 0:
		animacion.play("run")
	else:
		animacion.play("idle")

	move_and_slide()
