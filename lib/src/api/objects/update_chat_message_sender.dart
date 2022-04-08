import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// The message sender that is selected to send messages in a chat has changed
@immutable
class UpdateChatMessageSender extends Update {
  const UpdateChatMessageSender({
    required this.chatId,
    this.messageSenderId,
  });

  /// [chatId] Chat identifier
  final int chatId;

  /// [messageSenderId] New value of message_sender_id; may be null if the user
  /// can't change message sender
  final MessageSender? messageSenderId;

  static const String constructor = 'updateChatMessageSender';

  static UpdateChatMessageSender? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return UpdateChatMessageSender(
      chatId: json['chat_id'],
      messageSenderId: MessageSender.fromJson(json['message_sender_id']),
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'chat_id': chatId,
        'message_sender_id': messageSenderId?.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
