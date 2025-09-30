import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// The transaction is an upgrade of a gift; for regular users only
@immutable
class StarTransactionTypeGiftUpgrade extends StarTransactionType {
  const StarTransactionTypeGiftUpgrade({
    required this.userId,
    required this.gift,
  });

  /// [userId] Identifier of the user that initially sent the gift
  final int userId;

  /// [gift] The upgraded gift
  final UpgradedGift gift;

  static const String constructor = 'starTransactionTypeGiftUpgrade';

  static StarTransactionTypeGiftUpgrade? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return StarTransactionTypeGiftUpgrade(
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
