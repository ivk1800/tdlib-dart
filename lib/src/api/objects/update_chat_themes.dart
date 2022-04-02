import '../tdapi.dart';
import '../extensions/data_class_extensions.dart';

/// The list of available chat themes has changed
class UpdateChatThemes extends Update {
  UpdateChatThemes({required this.chatThemes});

  /// [chatThemes] The new list of chat themes
  final List<ChatTheme> chatThemes;

  static const String CONSTRUCTOR = 'updateChatThemes';

  static UpdateChatThemes? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return UpdateChatThemes(
        chatThemes: List<ChatTheme>.from((json['chat_themes'] ?? [])
            .map((item) => ChatTheme.fromJson(item))
            .toList()));
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'chat_themes': chatThemes.map((item) => item.toJson()).toList(),
        '@type': CONSTRUCTOR
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
