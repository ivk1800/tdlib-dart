import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// The transaction is a transaction with a business account
@immutable
class StarTransactionPartnerBusiness extends StarTransactionPartner {
  const StarTransactionPartnerBusiness({
    required this.userId,
    required this.media,
  });

  /// [userId] Identifier of the business account user
  final int userId;

  /// [media] The bought media if the transaction wasn't refunded
  final List<PaidMedia> media;

  static const String constructor = 'starTransactionPartnerBusiness';

  static StarTransactionPartnerBusiness? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return StarTransactionPartnerBusiness(
      userId: json['user_id'] as int,
      media: List<PaidMedia>.from(
          ((json['media'] as List<dynamic>?) ?? <dynamic>[])
              .map((item) => PaidMedia.fromJson(item))
              .toList()),
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
