import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Contains information about a forwarded message
@immutable
class MessageForwardInfo extends TdObject {
  const MessageForwardInfo({
    required this.origin,
    required this.date,
    this.source,
    required this.publicServiceAnnouncementType,
  });

  /// [origin] Origin of the forwarded message
  final MessageOrigin origin;

  /// [date] Point in time (Unix timestamp) when the message was originally sent
  final int date;

  /// [source] For messages forwarded to the chat with the current user (Saved
  /// Messages), to the Replies bot chat, or to the channel's discussion group,
  /// information about the source message from which the message was forwarded
  /// last time; may be null for other forwards or if unknown
  final ForwardSource? source;

  /// [publicServiceAnnouncementType] The type of a public service announcement
  /// for the forwarded message
  final String publicServiceAnnouncementType;

  static const String constructor = 'messageForwardInfo';

  static MessageForwardInfo? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return MessageForwardInfo(
      origin: MessageOrigin.fromJson(json['origin'] as Map<String, dynamic>?)!,
      date: json['date'] as int,
      source: ForwardSource.fromJson(json['source'] as Map<String, dynamic>?),
      publicServiceAnnouncementType:
          json['public_service_announcement_type'] as String,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'origin': origin.toJson(),
        'date': date,
        'source': source?.toJson(),
        'public_service_announcement_type': publicServiceAnnouncementType,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
