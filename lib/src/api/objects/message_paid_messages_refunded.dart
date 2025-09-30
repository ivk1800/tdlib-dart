import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Paid messages were refunded
@immutable
class MessagePaidMessagesRefunded extends MessageContent {
  const MessagePaidMessagesRefunded({
    required this.messageCount,
    required this.starCount,
  });

  /// [messageCount] The number of refunded messages
  final int messageCount;

  /// [starCount] The number of refunded Telegram Stars
  final int starCount;

  static const String constructor = 'messagePaidMessagesRefunded';

  static MessagePaidMessagesRefunded? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return MessagePaidMessagesRefunded(
      messageCount: json['message_count'] as int,
      starCount: json['star_count'] as int,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'message_count': messageCount,
    'star_count': starCount,
    '@type': constructor,
  };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
