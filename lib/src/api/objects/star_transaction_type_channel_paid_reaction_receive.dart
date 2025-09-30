import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// The transaction is a receiving of a paid reaction to a message by the
/// channel chat; for channel chats only
@immutable
class StarTransactionTypeChannelPaidReactionReceive
    extends StarTransactionType {
  const StarTransactionTypeChannelPaidReactionReceive({
    required this.userId,
    required this.messageId,
  });

  /// [userId] Identifier of the user that added the paid reaction
  final int userId;

  /// [messageId] Identifier of the reacted message; can be 0 or an identifier
  /// of a deleted message
  final int messageId;

  static const String constructor =
      'starTransactionTypeChannelPaidReactionReceive';

  static StarTransactionTypeChannelPaidReactionReceive? fromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }

    return StarTransactionTypeChannelPaidReactionReceive(
      userId: json['user_id'] as int,
      messageId: json['message_id'] as int,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'user_id': userId,
    'message_id': messageId,
    '@type': constructor,
  };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
