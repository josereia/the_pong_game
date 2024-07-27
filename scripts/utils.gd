class_name Utils

static func getGameVersion() -> String:
	var version = ProjectSettings.get_setting("application/config/version")
	return version
