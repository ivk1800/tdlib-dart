import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// A message with a live location was viewed. When the update is received,
/// the application is expected to update the live location
@immutable
class UpdateMessageLiveLocationViewed extends Update {
  const UpdateMessageLiveLocationViewed({
    required this.chatId,
    required this.messageId,
  });

  /// [chatId] Identifier of the chat with the live location message
  final int chatId;

  /// [messageId] Identifier of the message with live location
  final int messageId;

  static const String constructor = 'updateMessageLiveLocationViewed';

  static UpdateMessageLiveLocationViewed? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return UpdateMessageLiveLocationViewed(
      chatId: json['chat_id'] as int,
      messageId: json['message_id'] as int,
    );
  }

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
