extends Control

signal register_button_pressed(String)

@onready
var register_button = %RegisterBtn

@onready
var registration_text_input = %RegistrationTextInput

func _ready() -> void:
	register_button.pressed.connect(_on_RegisterBtn_pressed)


func _on_RegisterBtn_pressed() -> void:
	var registration_text: String = registration_text_input.text.strip_edges()
	if registration_text:
		print(registration_text)
		register_button_pressed.emit(registration_text)
