extends Node

func _init():
	# Using GodotSteam addon
	# var steam_language = Steam.getCurrentGameLanguage()
	# var locale = SteamLocaleMapper.mapSteamLanguageKeyToLocale(steam_language)
	# TranslationServer.set_locale(locale)

	var locale = SteamLocaleMapper.mapSteamLanguageKeyToLocale('german')
	print(locale)
