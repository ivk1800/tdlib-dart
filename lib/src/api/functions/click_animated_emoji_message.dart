import '../tdapi.dart';
import '../extensions/data_class_extensions.dart';

/// Informs TDLib that a message with an animated emoji was clicked by the
/// user. Returns a big animated sticker to be played or a 404 error if usual
/// animation needs to be played
/// Returns [Sticker]
class ClickAnimatedEmojiMessage extends TdFunction {
  ClickAnimatedEmojiMessage({required this.chatId, required this.messageId});

  /// [chatId] Chat identifier of the message
  final int chatId;

  /// [messageId] Identifier of the clicked message
  final int messageId;

  static const String CONSTRUCTOR = 'clickAnimatedEmojiMessage';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'chat_id': this.chatId,
        'message_id': this.messageId,
        '@type': CONSTRUCTOR
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
