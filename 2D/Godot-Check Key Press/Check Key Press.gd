extends Node2D

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	print("Script Started")


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	
	if Input.is_key_pressed(KEY_UP):
		print("Up arrow pressed.")
	
	if Input.is_key_pressed(KEY_DOWN):
		print("Down arrow pressed.")
		
	if Input.is_key_pressed(KEY_RIGHT):
		print("Right arrow pressed.")
		
	if Input.is_key_pressed(KEY_LEFT):
		print("Left arrow pressed.")
