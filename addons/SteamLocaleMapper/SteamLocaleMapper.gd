@tool
extends EditorPlugin
class_name SteamLocaleMapper

const _steam_lookup = {
	'arabic': ['Arabic', 'ar', 'ar'],
	'bulgarian': ['Bulgarian', 'bg', 'bg'],
	'schinese': ['Chinese (Simplified)', 'zh_Hans', 'zh'],
	'tchinese': ['Chinese (Traditional)', 'zh_Hant', 'zh'],
	'czech': ['Czech', 'cs', 'cs'],
	'danish': ['Danish', 'da', 'da'],
	'dutch': ['Dutch', 'nl', 'nl'],
	'english': ['English', 'en', 'en'],
	'finnish': ['Finnish', 'fi', 'fi'],
	'french': ['French', 'fr', 'fr'],
	'german': ['German', 'de', 'de'],
	'greek': ['Greek', 'el', 'el'],
	'hungarian': ['Hungarian', 'hu', 'hu'],
	'indonesian': ['Indonesian', 'id', 'id'], # id, in
	'italian': ['Italian', 'it', 'it'],
	'japanese': ['Japanese', 'ja', 'ja'],
	'koreana': ['Korean', 'ko', 'ko'],
	'norwegian': ['Norwegian', 'no', 'no'], # nb, no
	'polish': ['Polish', 'pl', 'pl'],
	'portuguese': ['Portuguese', 'pt', 'pt'],
	'brazilian': ['Portuguese-Brazil', 'pt_BR', 'pt'],
	'romanian': ['Romanian', 'ro', 'ro'],
	'russian': ['Russian', 'ru', 'ru'],
	'spanish': ['Spanish-Spain', 'es', 'es'],
	'latam': ['Spanish-Latin America', 'es', 'es'], # TODO: es-419
	'swedish': ['Swedish', 'sv', 'sv'],
	'thai': ['Thai', 'th', 'th'],
	'turkish': ['Turkish', 'tr', 'tr'],
	'ukrainian': ['Ukrainian', 'uk', 'uk'],
	'vietnamese': ['Vietnamese', 'vi', 'vi'],
}

func _enter_tree():
	pass

func _exit_tree():
	pass

static func getSteamLanguageName(language_key: String) -> String:
	language_key = language_key.to_lower()
	return _steam_lookup[language_key][0] if language_key in _steam_lookup else null

static func mapSteamLanguageKeyToLocale(language_key: String) -> String:
	language_key = language_key.to_lower()
	return _steam_lookup[language_key][1] if language_key in _steam_lookup else null

static func mapSteamLanguageKeyToFallbackLocale(language_key: String) -> String:
	language_key = language_key.to_lower()
	return _steam_lookup[language_key][2] if language_key in _steam_lookup else null
