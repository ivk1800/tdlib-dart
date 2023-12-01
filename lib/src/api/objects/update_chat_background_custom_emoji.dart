import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// A chat's custom emoji for reply background has changed
@immutable
class UpdateChatBackgroundCustomEmoji extends Update {
  const UpdateChatBackgroundCustomEmoji({
    required this.chatId,
    required this.backgroundCustomEmojiId,
  });

  /// [chatId] Chat identifier
  final int chatId;

  /// [backgroundCustomEmojiId] The new identifier of a custom emoji to be shown
  /// on the reply header background; 0 if none
  final int backgroundCustomEmojiId;

  static const String constructor = 'updateChatBackgroundCustomEmoji';

  static UpdateChatBackgroundCustomEmoji? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return UpdateChatBackgroundCustomEmoji(
      chatId: json['chat_id'] as int,
      backgroundCustomEmojiId:
          int.tryParse(json['background_custom_emoji_id']) ?? 0,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'chat_id': chatId,
        'background_custom_emoji_id': backgroundCustomEmojiId.toString(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
