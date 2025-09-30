import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// The user can be messaged, but the messages are paid
@immutable
class CanSendMessageToUserResultUserHasPaidMessages
    extends CanSendMessageToUserResult {
  const CanSendMessageToUserResultUserHasPaidMessages({
    required this.outgoingPaidMessageStarCount,
  });

  /// [outgoingPaidMessageStarCount] Number of Telegram Stars that must be paid
  /// by the current user for each sent message to the user
  final int outgoingPaidMessageStarCount;

  static const String constructor =
      'canSendMessageToUserResultUserHasPaidMessages';

  static CanSendMessageToUserResultUserHasPaidMessages? fromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }

    return CanSendMessageToUserResultUserHasPaidMessages(
      outgoingPaidMessageStarCount:
          json['outgoing_paid_message_star_count'] as int,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'outgoing_paid_message_star_count': outgoingPaidMessageStarCount,
    '@type': constructor,
  };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
