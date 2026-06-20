extends Control

@onready
var flag_label: Label = %FlagLabel

func set_flag_label(string: String) -> void:
	flag_label.text = string
