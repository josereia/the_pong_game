extends Control

func _ready() -> void:
	$VersionLabel.text = Utils.getGameVersion()

func _on_back_button_pressed() -> void:
	get_tree().change_scene_to_file('res://scenes/main.tscn')
