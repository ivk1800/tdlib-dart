import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Sells a gift received by the current user for Telegram Stars
/// Returns [Ok]
@immutable
class SellGift extends TdFunction {
  const SellGift({
    required this.senderUserId,
    required this.messageId,
  });

  /// [senderUserId] Identifier of the user that sent the gift
  final int senderUserId;

  /// [messageId] Identifier of the message with the gift in the chat with the
  /// user
  final int messageId;

  static const String constructor = 'sellGift';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'sender_user_id': senderUserId,
        'message_id': messageId,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
