extends Node2D

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	print("Script Started")

@export var Speed = 100.0

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	
	if (Input.is_key_pressed(KEY_UP) or Input.is_key_pressed(KEY_W)) and (Input.is_key_pressed(KEY_LEFT) or Input.is_key_label_pressed(KEY_A)):
		position.y -= Speed * 0.7071 * delta
		position.x -= Speed * 0.7071 * delta
		rotation_degrees = 145
		
	elif (Input.is_key_pressed(KEY_UP) or Input.is_key_pressed(KEY_W)) and (Input.is_key_pressed(KEY_RIGHT) or Input.is_key_label_pressed(KEY_D)):
		position.y -= Speed * 0.7071 * delta
		position.x += Speed * 0.7071 * delta
		rotation_degrees = -125
		
	elif (Input.is_key_pressed(KEY_DOWN) or Input.is_key_pressed(KEY_S)) and (Input.is_key_pressed(KEY_LEFT) or Input.is_key_label_pressed(KEY_A)):
		position.y += Speed * 0.7071 * delta
		position.x -= Speed * 0.7071 * delta
		rotation_degrees = 45
	
	elif (Input.is_key_pressed(KEY_DOWN) or Input.is_key_pressed(KEY_S)) and (Input.is_key_pressed(KEY_RIGHT) or Input.is_key_label_pressed(KEY_D)):
		position.y += Speed * 0.7071 * delta
		position.x += Speed * 0.7071 * delta
		rotation_degrees = -45
	
	elif Input.is_key_pressed(KEY_UP) or Input.is_key_pressed(KEY_W):
		position.y -= Speed * delta
		rotation_degrees = -180
	
	elif Input.is_key_pressed(KEY_DOWN) or Input.is_key_pressed(KEY_S):
		position.y += Speed * delta
		rotation_degrees = 0
		
	elif Input.is_key_pressed(KEY_RIGHT) or Input.is_key_pressed(KEY_D):
		position.x += Speed * delta
		rotation_degrees = -90
		
	elif Input.is_key_pressed(KEY_LEFT) or Input.is_key_pressed(KEY_A):
		position.x -= Speed * delta
		rotation_degrees = 90
