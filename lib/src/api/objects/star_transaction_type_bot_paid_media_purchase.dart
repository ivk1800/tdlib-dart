import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// The transaction is a purchase of paid media from a bot or a business
/// account by the current user; for regular users only
@immutable
class StarTransactionTypeBotPaidMediaPurchase extends StarTransactionType {
  const StarTransactionTypeBotPaidMediaPurchase({
    required this.userId,
    required this.media,
  });

  /// [userId] Identifier of the bot or the business account user that sent the
  /// paid media
  final int userId;

  /// [media] The bought media if the transaction wasn't refunded
  final List<PaidMedia> media;

  static const String constructor = 'starTransactionTypeBotPaidMediaPurchase';

  static StarTransactionTypeBotPaidMediaPurchase? fromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }

    return StarTransactionTypeBotPaidMediaPurchase(
      userId: json['user_id'] as int,
      media: List<PaidMedia>.from(
        ((json['media'] as List<dynamic>?) ?? <dynamic>[])
            .map((item) => PaidMedia.fromJson(item))
            .toList(),
      ),
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'user_id': userId,
    'media': media.map((item) => item.toJson()).toList(),
    '@type': constructor,
  };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
