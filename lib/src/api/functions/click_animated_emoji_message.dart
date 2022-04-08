import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Informs TDLib that a message with an animated emoji was clicked by the
/// user. Returns a big animated sticker to be played or a 404 error if usual
/// animation needs to be played
/// Returns [Sticker]
@immutable
class ClickAnimatedEmojiMessage extends TdFunction {
  const ClickAnimatedEmojiMessage({
    required this.chatId,
    required this.messageId,
  });

  /// [chatId] Chat identifier of the message
  final int chatId;

  /// [messageId] Identifier of the clicked message
  final int messageId;

  static const String constructor = 'clickAnimatedEmojiMessage';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'chat_id': chatId,
        'message_id': messageId,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
