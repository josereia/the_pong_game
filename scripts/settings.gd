extends Control

func _ready() -> void:
	$CenterContainer/VBoxContainer/LanguageContainer/LanguageOptionButton.select(Utils.getLocale())
	$VersionLabel.text = Utils.getGameVersion()

func _on_back_button_pressed() -> void:
	get_tree().change_scene_to_file('res://scenes/main.tscn')

func _on_language_option_button_item_selected(index: int) -> void:
	Utils.setLocale(Utils.Locales.values()[index])
