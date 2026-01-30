extends Node

@onready var player: CharacterBody2D = %player


func _ready() -> void:
	player.efecto_mascara.connect(_on_player_efecto_mascara)
	
func _on_player_efecto_mascara() -> void:
	player.mascara = true
