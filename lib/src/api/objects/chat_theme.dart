import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Describes a chat theme
@immutable
class ChatTheme extends TdObject {
  const ChatTheme({
    required this.name,
    required this.lightSettings,
    required this.darkSettings,
  });

  /// [name] Theme name
  final String name;

  /// [lightSettings] Theme settings for a light chat theme
  final ThemeSettings lightSettings;

  /// [darkSettings] Theme settings for a dark chat theme
  final ThemeSettings darkSettings;

  static const String constructor = 'chatTheme';

  static ChatTheme? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ChatTheme(
      name: json['name'],
      lightSettings: ThemeSettings.fromJson(json['light_settings'])!,
      darkSettings: ThemeSettings.fromJson(json['dark_settings'])!,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'name': name,
        'light_settings': lightSettings.toJson(),
        'dark_settings': darkSettings.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
