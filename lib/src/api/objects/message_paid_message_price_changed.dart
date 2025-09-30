import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// A price for paid messages was changed in the supergroup chat
@immutable
class MessagePaidMessagePriceChanged extends MessageContent {
  const MessagePaidMessagePriceChanged({required this.paidMessageStarCount});

  /// [paidMessageStarCount] The new number of Telegram Stars that must be paid
  /// by non-administrator users of the supergroup chat for each sent message
  final int paidMessageStarCount;

  static const String constructor = 'messagePaidMessagePriceChanged';

  static MessagePaidMessagePriceChanged? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return MessagePaidMessagePriceChanged(
      paidMessageStarCount: json['paid_message_star_count'] as int,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'paid_message_star_count': paidMessageStarCount,
    '@type': constructor,
  };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
