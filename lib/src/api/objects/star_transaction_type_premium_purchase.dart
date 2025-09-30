import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// The transaction is a purchase of Telegram Premium subscription; for
/// regular users and bots only
@immutable
class StarTransactionTypePremiumPurchase extends StarTransactionType {
  const StarTransactionTypePremiumPurchase({
    required this.userId,
    required this.monthCount,
    this.sticker,
  });

  /// [userId] Identifier of the user that received the Telegram Premium
  /// subscription
  final int userId;

  /// [monthCount] Number of months the Telegram Premium subscription will be
  /// active
  final int monthCount;

  /// [sticker] A sticker to be shown in the transaction information; may be
  /// null if unknown
  final Sticker? sticker;

  static const String constructor = 'starTransactionTypePremiumPurchase';

  static StarTransactionTypePremiumPurchase? fromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }

    return StarTransactionTypePremiumPurchase(
      userId: json['user_id'] as int,
      monthCount: json['month_count'] as int,
      sticker: Sticker.fromJson(json['sticker'] as Map<String, dynamic>?),
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'user_id': userId,
    'month_count': monthCount,
    'sticker': sticker?.toJson(),
    '@type': constructor,
  };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
