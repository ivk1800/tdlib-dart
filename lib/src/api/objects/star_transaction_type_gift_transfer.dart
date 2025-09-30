import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// The transaction is a transfer of an upgraded gift; for regular users only
@immutable
class StarTransactionTypeGiftTransfer extends StarTransactionType {
  const StarTransactionTypeGiftTransfer({
    required this.ownerId,
    required this.gift,
  });

  /// [ownerId] Identifier of the user or the channel that received the gift
  final MessageSender ownerId;

  /// [gift] The gift
  final UpgradedGift gift;

  static const String constructor = 'starTransactionTypeGiftTransfer';

  static StarTransactionTypeGiftTransfer? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return StarTransactionTypeGiftTransfer(
      ownerId: MessageSender.fromJson(
        json['owner_id'] as Map<String, dynamic>?,
      )!,
      gift: UpgradedGift.fromJson(json['gift'] as Map<String, dynamic>?)!,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'owner_id': ownerId.toJson(),
    'gift': gift.toJson(),
    '@type': constructor,
  };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
