extends Control

func _ready() -> void:
	$Version.text = Utils.getGameVersion()

func _on_start_button_pressed() -> void:
	get_tree().change_scene_to_file('res://scenes/game.tscn')

func _on_settings_button_pressed() -> void:
	get_tree().change_scene_to_file('res://scenes/settings.tscn')

func _on_credits_button_pressed() -> void:
	get_tree().change_scene_to_file('res://scenes/credits.tscn')
