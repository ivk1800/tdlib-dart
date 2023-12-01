import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// The chat created a Telegram Premium giveaway
@immutable
class ChatBoostSourceGiveaway extends ChatBoostSource {
  const ChatBoostSourceGiveaway({
    required this.userId,
    required this.giftCode,
    required this.giveawayMessageId,
    required this.isUnclaimed,
  });

  /// [userId] Identifier of a user that won in the giveaway; 0 if none
  final int userId;

  /// [giftCode] The created Telegram Premium gift code if it was used by the
  /// user or can be claimed by the current user; an empty string otherwise
  final String giftCode;

  /// [giveawayMessageId] Identifier of the corresponding giveaway message; can
  /// be an identifier of a deleted message
  final int giveawayMessageId;

  /// [isUnclaimed] True, if the winner for the corresponding Telegram Premium
  /// subscription wasn't chosen, because there were not enough participants
  final bool isUnclaimed;

  static const String constructor = 'chatBoostSourceGiveaway';

  static ChatBoostSourceGiveaway? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ChatBoostSourceGiveaway(
      userId: json['user_id'] as int,
      giftCode: json['gift_code'] as String,
      giveawayMessageId: json['giveaway_message_id'] as int,
      isUnclaimed: json['is_unclaimed'] as bool,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'user_id': userId,
        'gift_code': giftCode,
        'giveaway_message_id': giveawayMessageId,
        'is_unclaimed': isUnclaimed,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
