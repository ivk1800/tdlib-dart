import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// The transaction is a sale of an upgraded gift; for regular users only
@immutable
class StarTransactionTypeUpgradedGiftSale extends StarTransactionType {
  const StarTransactionTypeUpgradedGiftSale({
    required this.userId,
    required this.gift,
    required this.affiliate,
  });

  /// [userId] Identifier of the user that bought the gift
  final int userId;

  /// [gift] The gift
  final UpgradedGift gift;

  /// [affiliate] Information about commission received by Telegram from the
  /// transaction
  final AffiliateInfo affiliate;

  static const String constructor = 'starTransactionTypeUpgradedGiftSale';

  static StarTransactionTypeUpgradedGiftSale? fromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }

    return StarTransactionTypeUpgradedGiftSale(
      userId: json['user_id'] as int,
      gift: UpgradedGift.fromJson(json['gift'] as Map<String, dynamic>?)!,
      affiliate: AffiliateInfo.fromJson(
        json['affiliate'] as Map<String, dynamic>?,
      )!,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'user_id': userId,
    'gift': gift.toJson(),
    'affiliate': affiliate.toJson(),
    '@type': constructor,
  };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
