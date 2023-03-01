import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// A theme in the chat has been changed
@immutable
class MessageChatSetTheme extends MessageContent {
  const MessageChatSetTheme({
    required this.themeName,
  });

  /// [themeName] If non-empty, name of a new theme, set for the chat.
  /// Otherwise, chat theme was reset to the default one
  final String themeName;

  static const String constructor = 'messageChatSetTheme';

  static MessageChatSetTheme? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return MessageChatSetTheme(
      themeName: json['theme_name'],
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'theme_name': themeName,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
