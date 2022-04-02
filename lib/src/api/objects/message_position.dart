import '../tdapi.dart';
import '../extensions/data_class_extensions.dart';

/// Contains information about a message in a specific position
class MessagePosition extends TdObject {
  MessagePosition(
      {required this.position, required this.messageId, required this.date});

  /// [position] 0-based message position in the full list of suitable messages
  final int position;

  /// [messageId] Message identifier
  final int messageId;

  /// [date] Point in time (Unix timestamp) when the message was sent
  final int date;

  static const String CONSTRUCTOR = 'messagePosition';

  static MessagePosition? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return MessagePosition(
        position: json['position'],
        messageId: json['message_id'],
        date: json['date']);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'position': this.position,
        'message_id': this.messageId,
        'date': this.date,
        '@type': CONSTRUCTOR
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
