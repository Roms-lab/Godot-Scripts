extends Node2D

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	print("Script Started")

@export var Speed = 100.0

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	
	if Input.is_key_pressed(KEY_UP) or Input.is_key_pressed(KEY_W):
		position.y -= Speed * delta
	
	if Input.is_key_pressed(KEY_DOWN) or Input.is_key_pressed(KEY_S):
		position.y += Speed * delta
		
	if Input.is_key_pressed(KEY_RIGHT) or Input.is_key_pressed(KEY_D):
		position.x += Speed * delta
		
	if Input.is_key_pressed(KEY_LEFT) or Input.is_key_pressed(KEY_A):
		position.x -= Speed * delta
