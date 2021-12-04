import '../tdapi.dart';

/// Describes a chat theme
class ChatTheme extends TdObject {
  ChatTheme(
      {required this.name,
      required this.lightSettings,
      required this.darkSettings});

  /// [name] Theme name
  final String name;

  /// [lightSettings] Theme settings for a light chat theme
  final ThemeSettings lightSettings;

  /// [darkSettings] Theme settings for a dark chat theme
  final ThemeSettings darkSettings;

  static const String CONSTRUCTOR = 'chatTheme';

  static ChatTheme? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ChatTheme(
        name: json['name'],
        lightSettings: ThemeSettings.fromJson(json['light_settings'])!,
        darkSettings: ThemeSettings.fromJson(json['dark_settings'])!);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'name': this.name,
        'light_settings': this.lightSettings.toJson(),
        'dark_settings': this.darkSettings.toJson(),
        '@type': CONSTRUCTOR
      };
}
