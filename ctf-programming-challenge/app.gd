extends Node

@onready
var registration_gui: Control = $RegistrationGui

@onready 
var flag_gui: Control = $FlagGui

var flag = [86,81,57,81,86,48,108,70,82,49,49,100,84,48,77,83,67,49,57,100,67,103,74,76,88,108,49,85,70,119,90,90,71,108,107,68,84,85,65,98,67,103,112,74,81,108,73,85,88,66,65,99,86,119,74,83,65,119,86,81]
var secret = [51,99,49,48,50,54,51,50,45,98,48,102,100,45,52,100,101,102,45,56,55,101,99,45,55,50,102,52,51,54,99,100,100,48,55,100]

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
