import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// The chat background was changed
@immutable
class UpdateChatBackground extends Update {
  const UpdateChatBackground({
    required this.chatId,
    this.background,
  });

  /// [chatId] Chat identifier
  final int chatId;

  /// [background] The new chat background; may be null if background was reset
  /// to default
  final ChatBackground? background;

  static const String constructor = 'updateChatBackground';

  static UpdateChatBackground? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return UpdateChatBackground(
      chatId: json['chat_id'] as int,
      background:
          ChatBackground.fromJson(json['background'] as Map<String, dynamic>?),
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'chat_id': chatId,
        'background': background?.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
