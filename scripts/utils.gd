class_name Utils

static func getGameVersion() -> String:
	var version = ProjectSettings.get_setting("application/config/version")
	return version

static func setLocale(locale: Locales) -> void:
	var language: String
	if (locale == Locales.EN):
		language = 'en'
	elif (locale == Locales.PT):
		language = 'pt'

	TranslationServer.set_locale(language)

static func getLocale() -> Locales:
	var language: String = TranslationServer.get_locale()

	var locale: Locales
	if (language.contains('en')):
		locale = Locales.EN
	elif (language.contains('pt')):
		locale = Locales.PT

	return locale
	
enum Locales {EN, PT}
