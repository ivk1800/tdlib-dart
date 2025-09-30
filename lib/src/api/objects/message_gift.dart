import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// A regular gift was received or sent by the current user, or the current
/// user was notified about a channel gift
@immutable
class MessageGift extends MessageContent {
  const MessageGift({
    required this.gift,
    required this.senderId,
    required this.receiverId,
    required this.receivedGiftId,
    required this.text,
    required this.sellStarCount,
    required this.prepaidUpgradeStarCount,
    required this.isPrivate,
    required this.isSaved,
    required this.canBeUpgraded,
    required this.wasConverted,
    required this.wasUpgraded,
    required this.wasRefunded,
    required this.upgradedReceivedGiftId,
  });

  /// [gift] The gift
  final Gift gift;

  /// [senderId] Sender of the gift
  final MessageSender senderId;

  /// [receiverId] Receiver of the gift
  final MessageSender receiverId;

  /// [receivedGiftId] Unique identifier of the received gift for the current
  /// user; only for the receiver of the gift
  final String receivedGiftId;

  /// [text] Message added to the gift
  final FormattedText text;

  /// [sellStarCount] Number of Telegram Stars that can be claimed by the
  /// receiver instead of the regular gift; 0 if the gift can't be sold by the
  /// receiver
  final int sellStarCount;

  /// [prepaidUpgradeStarCount] Number of Telegram Stars that were paid by the
  /// sender for the ability to upgrade the gift
  final int prepaidUpgradeStarCount;

  /// [isPrivate] True, if the sender and gift text are shown only to the gift
  /// receiver; otherwise, everyone will be able to see them
  final bool isPrivate;

  /// [isSaved] True, if the gift is displayed on the user's or the channel's
  /// profile page; only for the receiver of the gift
  final bool isSaved;

  /// [canBeUpgraded] True, if the gift can be upgraded to a unique gift; only
  /// for the receiver of the gift
  final bool canBeUpgraded;

  /// [wasConverted] True, if the gift was converted to Telegram Stars; only for
  /// the receiver of the gift
  final bool wasConverted;

  /// [wasUpgraded] True, if the gift was upgraded to a unique gift
  final bool wasUpgraded;

  /// [wasRefunded] True, if the gift was refunded and isn't available anymore
  final bool wasRefunded;

  /// [upgradedReceivedGiftId] Identifier of the corresponding upgraded gift;
  /// may be empty if unknown. Use getReceivedGift to get information about the
  /// gift
  final String upgradedReceivedGiftId;

  static const String constructor = 'messageGift';

  static MessageGift? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return MessageGift(
      gift: Gift.fromJson(json['gift'] as Map<String, dynamic>?)!,
      senderId: MessageSender.fromJson(
        json['sender_id'] as Map<String, dynamic>?,
      )!,
      receiverId: MessageSender.fromJson(
        json['receiver_id'] as Map<String, dynamic>?,
      )!,
      receivedGiftId: json['received_gift_id'] as String,
      text: FormattedText.fromJson(json['text'] as Map<String, dynamic>?)!,
      sellStarCount: json['sell_star_count'] as int,
      prepaidUpgradeStarCount: json['prepaid_upgrade_star_count'] as int,
      isPrivate: json['is_private'] as bool,
      isSaved: json['is_saved'] as bool,
      canBeUpgraded: json['can_be_upgraded'] as bool,
      wasConverted: json['was_converted'] as bool,
      wasUpgraded: json['was_upgraded'] as bool,
      wasRefunded: json['was_refunded'] as bool,
      upgradedReceivedGiftId: json['upgraded_received_gift_id'] as String,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'gift': gift.toJson(),
    'sender_id': senderId.toJson(),
    'receiver_id': receiverId.toJson(),
    'received_gift_id': receivedGiftId,
    'text': text.toJson(),
    'sell_star_count': sellStarCount,
    'prepaid_upgrade_star_count': prepaidUpgradeStarCount,
    'is_private': isPrivate,
    'is_saved': isSaved,
    'can_be_upgraded': canBeUpgraded,
    'was_converted': wasConverted,
    'was_upgraded': wasUpgraded,
    'was_refunded': wasRefunded,
    'upgraded_received_gift_id': upgradedReceivedGiftId,
    '@type': constructor,
  };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
