import '../tdapi.dart';

/// Some animated emoji message was clicked and a big animated sticker must be
/// played if the message is visible on the screen.
/// chatActionWatchingAnimations with the text of the message needs to be sent
/// if the sticker is played
class UpdateAnimatedEmojiMessageClicked extends Update {
  UpdateAnimatedEmojiMessageClicked(
      {required this.chatId, required this.messageId, required this.sticker});

  /// [chatId] Chat identifier
  final int chatId;

  /// [messageId] Message identifier
  final int messageId;

  /// [sticker] The animated sticker to be played
  final Sticker sticker;

  static const String CONSTRUCTOR = 'updateAnimatedEmojiMessageClicked';

  static UpdateAnimatedEmojiMessageClicked? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return UpdateAnimatedEmojiMessageClicked(
        chatId: json['chat_id'],
        messageId: json['message_id'],
        sticker: Sticker.fromJson(json['sticker'])!);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'chat_id': this.chatId,
        'message_id': this.messageId,
        'sticker': this.sticker.toJson(),
        '@type': CONSTRUCTOR
      };
}
