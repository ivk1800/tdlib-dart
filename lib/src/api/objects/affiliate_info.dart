import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Contains information about an affiliate that received commission from a
/// Telegram Star transaction
@immutable
class AffiliateInfo extends TdObject {
  const AffiliateInfo({
    required this.commissionPerMille,
    required this.affiliateChatId,
    required this.starAmount,
  });

  /// [commissionPerMille] The number of Telegram Stars received by the
  /// affiliate for each 1000 Telegram Stars received by the program owner
  final int commissionPerMille;

  /// [affiliateChatId] Identifier of the chat which received the commission
  final int affiliateChatId;

  /// [starAmount] The amount of Telegram Stars that were received by the
  /// affiliate; can be negative for refunds
  final StarAmount starAmount;

  static const String constructor = 'affiliateInfo';

  static AffiliateInfo? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return AffiliateInfo(
      commissionPerMille: json['commission_per_mille'] as int,
      affiliateChatId: json['affiliate_chat_id'] as int,
      starAmount: StarAmount.fromJson(
        json['star_amount'] as Map<String, dynamic>?,
      )!,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'commission_per_mille': commissionPerMille,
    'affiliate_chat_id': affiliateChatId,
    'star_amount': starAmount.toJson(),
    '@type': constructor,
  };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
