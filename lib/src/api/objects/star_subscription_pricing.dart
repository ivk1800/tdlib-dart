import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Describes subscription plan paid in Telegram Stars
@immutable
class StarSubscriptionPricing extends TdObject {
  const StarSubscriptionPricing({
    required this.period,
    required this.starCount,
  });

  /// [period] The number of seconds between consecutive Telegram Star debiting
  final int period;

  /// [starCount] The amount of Telegram Stars that must be paid for each period
  final int starCount;

  static const String constructor = 'starSubscriptionPricing';

  static StarSubscriptionPricing? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return StarSubscriptionPricing(
      period: json['period'] as int,
      starCount: json['star_count'] as int,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'period': period,
        'star_count': starCount,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
