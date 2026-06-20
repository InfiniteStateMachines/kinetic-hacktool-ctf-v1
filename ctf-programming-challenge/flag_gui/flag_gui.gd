extends Control

@onready
var flag_label: RichTextLabel = %FlagLabel

func set_flag_label(string: String) -> void:
	var effect: String = "[wave]{0}[/wave]"
	flag_label.text = effect.format([string])
