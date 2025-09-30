import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Allows to buy a Telegram Premium subscription for another user with
/// payment in Telegram Stars; for bots only
/// Returns [Ok]
@immutable
class GiftPremiumWithStars extends TdFunction {
  const GiftPremiumWithStars({
    required this.userId,
    required this.starCount,
    required this.monthCount,
    required this.text,
  });

  /// [userId] Identifier of the user which will receive Telegram Premium
  final int userId;

  /// [starCount] The number of Telegram Stars to pay for subscription
  final int starCount;

  /// [monthCount] Number of months the Telegram Premium subscription will be
  /// active for the user
  final int monthCount;

  /// [text] Text to show to the user receiving Telegram Premium;
  /// 0-getOption("gift_text_length_max") characters. Only Bold, Italic,
  /// Underline, Strikethrough, Spoiler, and CustomEmoji entities are allowed
  final FormattedText text;

  static const String constructor = 'giftPremiumWithStars';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'user_id': userId,
    'star_count': starCount,
    'month_count': monthCount,
    'text': text.toJson(),
    '@type': constructor,
  };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
