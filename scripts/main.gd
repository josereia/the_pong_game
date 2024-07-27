extends Control

func _ready() -> void:
	$Version.text = Utils.getGameVersion()

func _on_credits_button_pressed() -> void:
	get_tree().change_scene_to_file('res://scenes/credits.tscn')
