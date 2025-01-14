# Steam Locale Mapper Addon
Godot addon for mapping Steam API languages to Godot locale codes.

When using Steam API addons in Godot such as [GodotSteam](https://godotsteam.com), language names need to be mapped to
Godot locales in order to switch a Godot game's language to the user-selected one in Steam.

* A full list of Steam languages can be found [here](https://partner.steamgames.com/doc/store/localization/languages).
* A full list of Godot locale codes can be found [here](https://docs.godotengine.org/en/stable/tutorials/i18n/locales.html).

## Usage
After activting the addon in a project, the `SteamLocaleMapper` can be used for mapping.

Here is an example using [GodotSteam](https://godotsteam.com) ([getcurrentgamelanguage](https://godotsteam.com/classes/apps/?h=language#getcurrentgamelanguage)) to set the Godot game's locale to the Steam defined language:
```gdscript
var steam_language = Steam.getCurrentGameLanguage()
var locale = SteamLocaleMapper.mapSteamLanguageKeyToLocale(steam_language)
TranslationServer.set_locale(locale)
```

In case a specific locale is not added to the Godot project, such as brazilian ("pt_BR"), an
additional function "mapSteamLanguageKeyToFallbackLocale" allows the retrieval of a fallback locale,
in this case "pt".
