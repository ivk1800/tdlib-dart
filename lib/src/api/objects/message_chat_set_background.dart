import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// A new background was set in the chat
@immutable
class MessageChatSetBackground extends MessageContent {
  const MessageChatSetBackground({
    required this.oldBackgroundMessageId,
    required this.background,
  });

  /// [oldBackgroundMessageId] Identifier of the message with a previously set
  /// same background; 0 if none. Can be an identifier of a deleted message
  final int oldBackgroundMessageId;

  /// [background] The new background
  final ChatBackground background;

  static const String constructor = 'messageChatSetBackground';

  static MessageChatSetBackground? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return MessageChatSetBackground(
      oldBackgroundMessageId: json['old_background_message_id'] as int,
      background:
          ChatBackground.fromJson(json['background'] as Map<String, dynamic>?)!,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'old_background_message_id': oldBackgroundMessageId,
        'background': background.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
