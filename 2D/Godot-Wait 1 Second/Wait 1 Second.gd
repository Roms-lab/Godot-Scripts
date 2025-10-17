extends Node2D

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	print("Waiting 1 second.")
	await get_tree().create_timer(1.0).timeout
	print("Waited a second.")
