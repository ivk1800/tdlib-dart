import '../tdapi.dart';

/// A theme in the chat has been changed
class MessageChatSetTheme extends MessageContent {
  MessageChatSetTheme({required this.themeName});

  /// [themeName] If non-empty, name of a new theme, set for the chat. Otherwise
  /// chat theme was reset to the default one
  final String themeName;

  static const String CONSTRUCTOR = 'messageChatSetTheme';

  static MessageChatSetTheme? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return MessageChatSetTheme(themeName: json['theme_name']);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() =>
      {'theme_name': this.themeName, '@type': CONSTRUCTOR};
}
