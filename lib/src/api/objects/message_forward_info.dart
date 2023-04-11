import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Contains information about a forwarded message
@immutable
class MessageForwardInfo extends TdObject {
  const MessageForwardInfo({
    required this.origin,
    required this.date,
    required this.publicServiceAnnouncementType,
    required this.fromChatId,
    required this.fromMessageId,
  });

  /// [origin] Origin of a forwarded message
  final MessageForwardOrigin origin;

  /// [date] Point in time (Unix timestamp) when the message was originally sent
  final int date;

  /// [publicServiceAnnouncementType] The type of a public service announcement
  /// for the forwarded message
  final String publicServiceAnnouncementType;

  /// [fromChatId] For messages forwarded to the chat with the current user
  /// (Saved Messages), to the Replies bot chat, or to the channel's discussion
  /// group, the identifier of the chat from which the message was forwarded
  /// last time; 0 if unknown
  final int fromChatId;

  /// [fromMessageId] For messages forwarded to the chat with the current user
  /// (Saved Messages), to the Replies bot chat, or to the channel's discussion
  /// group, the identifier of the original message from which the new message
  /// was forwarded last time; 0 if unknown
  final int fromMessageId;

  static const String constructor = 'messageForwardInfo';

  static MessageForwardInfo? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return MessageForwardInfo(
      origin: MessageForwardOrigin.fromJson(
          json['origin'] as Map<String, dynamic>?)!,
      date: json['date'] as int,
      publicServiceAnnouncementType:
          json['public_service_announcement_type'] as String,
      fromChatId: json['from_chat_id'] as int,
      fromMessageId: json['from_message_id'] as int,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'origin': origin.toJson(),
        'date': date,
        'public_service_announcement_type': publicServiceAnnouncementType,
        'from_chat_id': fromChatId,
        'from_message_id': fromMessageId,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
