import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Some animated emoji message was clicked and a big animated sticker must be
/// played if the message is visible on the screen.
/// chatActionWatchingAnimations with the text of the message needs to be sent
/// if the sticker is played
@immutable
class UpdateAnimatedEmojiMessageClicked extends Update {
  const UpdateAnimatedEmojiMessageClicked({
    required this.chatId,
    required this.messageId,
    required this.sticker,
  });

  /// [chatId] Chat identifier
  final int chatId;

  /// [messageId] Message identifier
  final int messageId;

  /// [sticker] The animated sticker to be played
  final Sticker sticker;

  static const String constructor = 'updateAnimatedEmojiMessageClicked';

  static UpdateAnimatedEmojiMessageClicked? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return UpdateAnimatedEmojiMessageClicked(
      chatId: json['chat_id'] as int,
      messageId: json['message_id'] as int,
      sticker: Sticker.fromJson(json['sticker'] as Map<String, dynamic>?)!,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'chat_id': chatId,
        'message_id': messageId,
        'sticker': sticker.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
