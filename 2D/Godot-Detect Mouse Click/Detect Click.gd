extends Node2D

# Checks for all input events like mouse clicks
func _input(event: InputEvent) -> void:
	if event is InputEventMouseButton:
		if event.button_index == MOUSE_BUTTON_LEFT:
			if event.is_pressed():
				print("Left Click Detected.")
			else:
				print("Left Click Released.")
	
	if event is InputEventMouseButton:
		if event.button_index == MOUSE_BUTTON_MASK_RIGHT:
			if event.is_pressed():
				print("Right Click Detected.")
			else:
				print("Right Click Released.")