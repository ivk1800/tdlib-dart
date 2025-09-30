import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// The transaction is a sale of paid media by the bot or a business account
/// managed by the bot; for bots only
@immutable
class StarTransactionTypeBotPaidMediaSale extends StarTransactionType {
  const StarTransactionTypeBotPaidMediaSale({
    required this.userId,
    required this.media,
    required this.payload,
    this.affiliate,
  });

  /// [userId] Identifier of the user that bought the media
  final int userId;

  /// [media] The bought media
  final List<PaidMedia> media;

  /// [payload] Bot-provided payload
  final String payload;

  /// [affiliate] Information about the affiliate which received commission from
  /// the transaction; may be null if none
  final AffiliateInfo? affiliate;

  static const String constructor = 'starTransactionTypeBotPaidMediaSale';

  static StarTransactionTypeBotPaidMediaSale? fromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }

    return StarTransactionTypeBotPaidMediaSale(
      userId: json['user_id'] as int,
      media: List<PaidMedia>.from(
        ((json['media'] as List<dynamic>?) ?? <dynamic>[])
            .map((item) => PaidMedia.fromJson(item))
            .toList(),
      ),
      payload: json['payload'] as String,
      affiliate: AffiliateInfo.fromJson(
        json['affiliate'] as Map<String, dynamic>?,
      ),
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'user_id': userId,
    'media': media.map((item) => item.toJson()).toList(),
    'payload': payload,
    'affiliate': affiliate?.toJson(),
    '@type': constructor,
  };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
