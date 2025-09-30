import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// A gift which purchase, upgrade or transfer were refunded
@immutable
class MessageRefundedUpgradedGift extends MessageContent {
  const MessageRefundedUpgradedGift({
    required this.gift,
    required this.senderId,
    required this.receiverId,
    required this.isUpgrade,
  });

  /// [gift] The gift
  final Gift gift;

  /// [senderId] Sender of the gift
  final MessageSender senderId;

  /// [receiverId] Receiver of the gift
  final MessageSender receiverId;

  /// [isUpgrade] True, if the gift was obtained by upgrading of a previously
  /// received gift; otherwise, this is a transferred or resold gift
  final bool isUpgrade;

  static const String constructor = 'messageRefundedUpgradedGift';

  static MessageRefundedUpgradedGift? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return MessageRefundedUpgradedGift(
      gift: Gift.fromJson(json['gift'] as Map<String, dynamic>?)!,
      senderId: MessageSender.fromJson(
        json['sender_id'] as Map<String, dynamic>?,
      )!,
      receiverId: MessageSender.fromJson(
        json['receiver_id'] as Map<String, dynamic>?,
      )!,
      isUpgrade: json['is_upgrade'] as bool,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'gift': gift.toJson(),
    'sender_id': senderId.toJson(),
    'receiver_id': receiverId.toJson(),
    'is_upgrade': isUpgrade,
    '@type': constructor,
  };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
