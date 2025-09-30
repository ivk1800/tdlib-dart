import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// The transaction is a purchase of an upgraded gift for some user or
/// channel; for regular users only
@immutable
class StarTransactionTypeUpgradedGiftPurchase extends StarTransactionType {
  const StarTransactionTypeUpgradedGiftPurchase({
    required this.userId,
    required this.gift,
  });

  /// [userId] Identifier of the user that sold the gift
  final int userId;

  /// [gift] The gift
  final UpgradedGift gift;

  static const String constructor = 'starTransactionTypeUpgradedGiftPurchase';

  static StarTransactionTypeUpgradedGiftPurchase? fromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }

    return StarTransactionTypeUpgradedGiftPurchase(
      userId: json['user_id'] as int,
      gift: UpgradedGift.fromJson(json['gift'] as Map<String, dynamic>?)!,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'user_id': userId,
    'gift': gift.toJson(),
    '@type': constructor,
  };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
