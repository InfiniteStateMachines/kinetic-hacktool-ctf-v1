extends Node

@onready
var registration_gui: Control = $RegistrationGui

@onready 
var flag_gui: Control = $FlagGui

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	flag_gui.set_visible(false)
	
	registration_gui.set_visible(true)
	registration_gui.register_button_pressed.connect(_on_register_button_pressed)

func _on_register_button_pressed(registration_value: String) -> void:
	var valid_registration = validate_registration(registration_value)
	if valid_registration:
		registration_gui.set_visible(false)
		flag_gui.set_visible(true)

func validate_registration(registration_value) -> bool:
	var ascii_chars = []
	for c in registration_value:
		ascii_chars.append(ord(c))
	return true
