import '../tdapi.dart';
import '../extensions/data_class_extensions.dart';

/// The chat theme was changed
class UpdateChatTheme extends Update {
  UpdateChatTheme({required this.chatId, required this.themeName});

  /// [chatId] Chat identifier
  final int chatId;

  /// [themeName] The new name of the chat theme; may be empty if theme was
  /// reset to default
  final String themeName;

  static const String CONSTRUCTOR = 'updateChatTheme';

  static UpdateChatTheme? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return UpdateChatTheme(
        chatId: json['chat_id'], themeName: json['theme_name']);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'chat_id': this.chatId,
        'theme_name': this.themeName,
        '@type': CONSTRUCTOR
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
