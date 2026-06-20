extends Node

@onready
var registration_gui: Control = $RegistrationGui

@onready 
var flag_gui: Control = $FlagGui

var flag = [85,15,80,87,73,69,71,93,93,79,67,18,11,95,93,10,2,75,94,93,84,23,6,89,26,89,3,77,64,27,10,10,73,66,82,20,92,16,28,87,2,82,3,5,80]
var secret_hash = "9e9353ef7b493ad1d37dcb9ef303792eb2b891590c1dbe7f1528c68a4f7e4b39"

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	flag_gui.set_visible(false)
	
	registration_gui.set_visible(true)
	registration_gui.register_button_pressed.connect(_on_register_button_pressed)

func _on_register_button_pressed(registration_value: String) -> void:
	var valid_registration = validate_registration(registration_value)
	if valid_registration:
		flag_gui.set_flag_label(flag)
		registration_gui.set_visible(false)
		flag_gui.set_visible(true)

func validate_registration(registration_value) -> bool:
	var hash_ctx = HashingContext.new()
	hash_ctx.start(HashingContext.HASH_SHA256)
	hash_ctx.update(registration_value.to_utf8_buffer())
	var hex = hash_ctx.finish().hex_encode()
	
	if hex == secret_hash:
		var secret_key = []
		for c in registration_value:
			secret_key.append(ord(c))
		flag = cipher.xor(secret_key, flag).get_string_from_ascii()
		return true
	else:
		return false
