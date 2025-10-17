extends Node2D

@export var SpinSpeed = 100.0

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	print("Spinning Started")


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	rotation_degrees += SpinSpeed * delta
