extends Node2D

@export var MovementSpeed = -100.0

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	print("Movement Started")


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	position.y += MovementSpeed * delta
