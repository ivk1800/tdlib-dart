import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// The chat theme was changed
@immutable
class UpdateChatTheme extends Update {
  const UpdateChatTheme({
    required this.chatId,
    required this.themeName,
  });

  /// [chatId] Chat identifier
  final int chatId;

  /// [themeName] The new name of the chat theme; may be empty if theme was
  /// reset to default
  final String themeName;

  static const String constructor = 'updateChatTheme';

  static UpdateChatTheme? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return UpdateChatTheme(
      chatId: json['chat_id'] as int,
      themeName: json['theme_name'] as String,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'chat_id': chatId,
        'theme_name': themeName,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
