extends Node2D

func _ready() -> void:
	$Version.text = getGameVersion()

func getGameVersion() -> String:
	var version = ProjectSettings.get_setting("application/config/version")
	return version
