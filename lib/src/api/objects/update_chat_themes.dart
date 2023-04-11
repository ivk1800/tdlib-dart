import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// The list of available chat themes has changed
@immutable
class UpdateChatThemes extends Update {
  const UpdateChatThemes({
    required this.chatThemes,
  });

  /// [chatThemes] The new list of chat themes
  final List<ChatTheme> chatThemes;

  static const String constructor = 'updateChatThemes';

  static UpdateChatThemes? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return UpdateChatThemes(
      chatThemes: List<ChatTheme>.from(
          ((json['chat_themes'] as List<dynamic>?) ?? <dynamic>[])
              .map((item) => ChatTheme.fromJson(item))
              .toList()),
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'chat_themes': chatThemes.map((item) => item.toJson()).toList(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
