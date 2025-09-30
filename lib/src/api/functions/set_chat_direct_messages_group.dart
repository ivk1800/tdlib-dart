import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Changes direct messages group settings for a channel chat; requires owner
/// privileges in the chat
/// Returns [Ok]
@immutable
class SetChatDirectMessagesGroup extends TdFunction {
  const SetChatDirectMessagesGroup({
    required this.chatId,
    required this.isEnabled,
    required this.paidMessageStarCount,
  });

  /// [chatId] Identifier of the channel chat
  final int chatId;

  /// [isEnabled] Pass true if the direct messages group is enabled for the
  /// channel chat; pass false otherwise
  final bool isEnabled;

  /// [paidMessageStarCount] The new number of Telegram Stars that must be paid
  /// for each message that is sent to the direct messages chat unless the
  /// sender is an administrator of the channel chat;
  /// 0-getOption("paid_message_star_count_max"). The channel will receive
  /// getOption("paid_message_earnings_per_mille") Telegram Stars for each 1000
  /// Telegram Stars paid for message sending. Requires
  /// supergroupFullInfo.can_enable_paid_messages for positive amounts
  final int paidMessageStarCount;

  static const String constructor = 'setChatDirectMessagesGroup';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'chat_id': chatId,
    'is_enabled': isEnabled,
    'paid_message_star_count': paidMessageStarCount,
    '@type': constructor,
  };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
