import '../tdapi.dart';
import '../extensions/data_class_extensions.dart';

/// A chat theme was edited
class PushMessageContentChatSetTheme extends PushMessageContent {
  PushMessageContentChatSetTheme({required this.themeName});

  /// [themeName] If non-empty, name of a new theme, set for the chat. Otherwise
  /// chat theme was reset to the default one
  final String themeName;

  static const String CONSTRUCTOR = 'pushMessageContentChatSetTheme';

  static PushMessageContentChatSetTheme? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return PushMessageContentChatSetTheme(themeName: json['theme_name']);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() =>
      {'theme_name': this.themeName, '@type': CONSTRUCTOR};

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
