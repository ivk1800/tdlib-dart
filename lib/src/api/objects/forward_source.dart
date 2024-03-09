import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Contains information about the last message from which a new message was
/// forwarded last time
@immutable
class ForwardSource extends TdObject {
  const ForwardSource({
    required this.chatId,
    required this.messageId,
    this.senderId,
    required this.senderName,
    required this.date,
    required this.isOutgoing,
  });

  /// [chatId] Identifier of the chat to which the message that was forwarded
  /// belonged; may be 0 if unknown
  final int chatId;

  /// [messageId] Identifier of the message; may be 0 if unknown
  final int messageId;

  /// [senderId] Identifier of the sender of the message; may be null if unknown
  /// or the new message was forwarded not to Saved Messages
  final MessageSender? senderId;

  /// [senderName] Name of the sender of the message if the sender is hidden by
  /// their privacy settings
  final String senderName;

  /// [date] Point in time (Unix timestamp) when the message is sent; 0 if
  /// unknown
  final int date;

  /// [isOutgoing] True, if the message that was forwarded is outgoing; always
  /// false if sender is unknown
  final bool isOutgoing;

  static const String constructor = 'forwardSource';

  static ForwardSource? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ForwardSource(
      chatId: json['chat_id'] as int,
      messageId: json['message_id'] as int,
      senderId:
          MessageSender.fromJson(json['sender_id'] as Map<String, dynamic>?),
      senderName: json['sender_name'] as String,
      date: json['date'] as int,
      isOutgoing: json['is_outgoing'] as bool,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'chat_id': chatId,
        'message_id': messageId,
        'sender_id': senderId?.toJson(),
        'sender_name': senderName,
        'date': date,
        'is_outgoing': isOutgoing,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
